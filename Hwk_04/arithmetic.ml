
type expr
  = Const of int
  | Add of  expr * expr
  | Mul of expr * expr
  | Sub of expr * expr
  | Div of expr * expr


let rec show_expr (e: expr) : string =
  match e with
  | Const (n) -> string_of_int n
  | Add (e1, e2) -> "(" ^ show_expr e1 ^ "+" ^ show_expr e2 ^ ")"
  | Mul (e1, e2) -> "(" ^ show_expr e1 ^ "*" ^ show_expr e2 ^ ")"
  | Sub (e1, e2) -> "(" ^ show_expr e1 ^ "-" ^ show_expr e2 ^ ")"
  | Div (e1, e2) -> "(" ^ show_expr e1 ^ "/" ^ show_expr e2 ^ ")"

let rec show_pretty_expr (e: expr) : string =
  match e with
  | Const (n) -> string_of_int n
  | Add (e1, e2) ->
    let left_sym = "" in
    let midsym =
      match e2 with
      | Add(e21, e22) -> "+("
      | Sub(e21, e22) -> "+("
      | _ -> "+"
    in
    let right_sym =
      match e2 with
      | Add(e21, e22) -> ")"
      | Sub(e21, e22) -> ")"
      | _ -> ""
    in
      left_sym ^ show_pretty_expr e1 ^ midsym ^ show_pretty_expr e2 ^ right_sym

  | Mul (e1, e2) ->
    let left_sym =
      match e1 with
      | Add(e11, e12) -> "("
      | Sub(e11, e12) -> "("
      | _ -> ""
    in
    let midsym1 =
      match e1 with
      | Add(e11, e12) -> ")*"
      | Sub(e11, e12) -> ")*"
      | _ -> "*"
    in
    let midsym2 =
      match e2 with
      | Const (n) -> ""
      | _ -> "("
    in
    let right_sym =
      match e2 with
      | Const (n) -> ""
      | _ -> ")"
    in
      left_sym ^ show_pretty_expr e1 ^ midsym1 ^ midsym2 ^ show_pretty_expr e2 ^ right_sym

  | Sub (e1, e2) ->
    let left_sym = "" in
    let midsym =
      match e2 with
      | Add(e21, e22) -> "-("
      | Sub(e21, e22) -> "-("
      | _ -> "-"
    in
    let right_sym =
      match e2 with
      | Add(e21, e22) -> ")"
      | Sub(e21, e22) -> ")"
      | _ -> ""
    in
      left_sym ^ show_pretty_expr e1 ^ midsym ^ show_pretty_expr e2 ^ right_sym

  | Div (e1, e2) ->
    let left_sym =
      match e1 with
      | Add(e11, e12) -> "("
      | Sub(e11, e12) -> "("
      | _ -> ""
    in
    let midsym1 =
      match e1 with
      | Add(e11, e12) -> ")/"
      | Sub(e11, e12) -> ")/"
      | _ -> "/"
    in
    let midsym2 =
      match e2 with
      | Const (n) -> ""
      | _ -> "("
    in
    let right_sym =
      match e2 with
      | Const (n) -> ""
      | _ -> ")"
    in
      left_sym ^ show_pretty_expr e1 ^ midsym1 ^ midsym2 ^ show_pretty_expr e2 ^ right_sym
