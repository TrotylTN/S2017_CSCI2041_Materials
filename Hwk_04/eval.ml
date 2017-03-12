type environment = None

type expr
  = Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr

  | Lt of expr * expr
  | Eq of expr * expr
  | And of expr * expr

  | If of expr * expr * expr

  | Id of string

  | Let of string * expr * expr
  | LetRec of string * expr * expr

  | App of expr * expr
  | Lambda of string * expr

  | Value of value

and value
  = Int of int
  | Bool of bool
  | Closure of string * expr * environment
  (* You may need an extra constructor for this type. *)

let evaluate (e:expr) : value =
  raise (Failure "Complete this function...")



(* Some sample expressions *)

let inc = Lambda ("n", Add(Id "n", Value (Int 1)))

let add = Lambda ("x",
                  Lambda ("y", Add (Id "x", Id "y"))
                 )

(* The 'sumToN' function *)
let sumToN_expr : expr =
    LetRec ("sumToN",
            Lambda ("n",
                    If (Eq (Id "n", Value (Int 0)),
                        Value (Int 0),
                        Add (Id "n",
                             App (Id "sumToN",
                                  Sub (Id "n", Value (Int 1))
                                 )
                            )
                       )
                   ),
            Id "sumToN"
           )


(* let twenty_one : value = evaluate (App (sumToN_expr, Value (Int 6))); *)

let freevars (e_origin: expr) : string list =
  let rec parse_e (e: expr) (binded: string list) (cur_list: string list) : string list =
    match e with
    | Add (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | Sub (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | Mul (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | Div (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | Lt (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | Eq (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | And (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list

    | If (e1, e2, e3) ->
      let e1list =
        parse_e e1 binded cur_list
      in
      let e2list =
        parse_e e2 binded e1list
      in
        parse_e e3 binded e2list

    | Id (id_st) ->
      if (List.mem id_st binded = false && List.mem id_st cur_list = false)
        then cur_list
        else cur_list @ [id_st]

    | Let (fname, e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
      (* bind fname in the following in-statement *)
        parse_e e2 (binded @ [fname]) e1list
    | LetRec (fname, e1, e2) ->
      let e1list =
      (* recursive def allows call itself *)
        parse_e e1 (binded @ [fname]) cur_list
      in
        parse_e e2 (binded @ [fname]) e1list
    | App (e1, e2) ->
      let e1list =
        parse_e e1 binded cur_list
      in
        parse_e e2 binded e1list
    | Lambda (temp_id, e1) ->
      parse_e e1 (binded @ [temp_id]) cur_list
    | Value (v) -> cur_list
  in
    parse_e e_origin [] []
