
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
