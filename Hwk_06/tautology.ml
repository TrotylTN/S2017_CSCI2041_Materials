type formula = And of formula * formula
	     | Or  of formula * formula
	     | Not of formula
	     | Prop of string
	     | True
	     | False

exception KeepLooking

type subst = (string * bool) list

let show_list show l =
  let rec sl l =
    match l with
    | [] -> ""
    | [x] -> show x
    | x::xs -> show x ^ "; " ^ sl xs
  in "[ " ^ sl l ^ " ]"

let show_string_bool_pair (s,b) =
  "(\"" ^ s ^ "\"," ^ (if b then "true" else "false") ^ ")"

let show_subst = show_list show_string_bool_pair

let is_elem v l =
  List.fold_right (fun x in_rest -> if x = v then true else in_rest) l false

let rec explode = function
  | "" -> []
  | s  -> String.get s 0 :: explode (String.sub s 1 ((String.length s) - 1))

let dedup lst =
  let f elem to_keep =
    if is_elem elem to_keep then to_keep else elem::to_keep
  in List.fold_right f lst []

let rec lookup_subst (a: string) (s: subst) : bool =
	match s with
	| (key, b)::tl ->
	(
		if (a = key)
			then b
			else lookup_subst a tl
	)
	| [] -> raise KeepLooking

let rec eval (f: formula) (s: subst) : bool =
	match f with
	| And(f1, f2) -> (eval f1 s) && (eval f2 s)
	| Or(f1, f2) -> (eval f1 s) || (eval f2 s)
	| Not(ff) -> not(eval ff s)
	| Prop(str1) -> lookup_subst str1 s
	| True -> true
	| False -> false
