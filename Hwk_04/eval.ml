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


let twenty_one : value = evaluate (App (sumToN_expr, Value (Int 6)));

let freevars (e: expr) : string list =
  let parse_e (e: expr) (binded: string list) (cur_list: string list) : (string list) =
    match e with
    | Add (e1, e2) ->
    | Sub (e1, e2) ->
    | Mul (e1, e2) ->
    | Div (e1, e2) ->
    | Lt (e1, e2) ->
    | Eq (e1, e2) ->
    | And (e1, e2) ->
    | If (e1, e2, e3) ->
    | Id (id_st) ->
      if (List.mem id_st binded = false && List.mem id_st cur_list = false)
        then cur_list
        else cur_list @ [id_st]
    | Let (fname, e1, e2) ->
    | LetRec (fname, e1, e2) ->
    | App (f_id, e2) ->
    | Lambda (temp_id, e1) ->
    | Value (v) -> cur_list

  in
    parse_e e [] []
