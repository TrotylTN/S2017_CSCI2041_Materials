let rec ands (b : bool list) : bool =
  match b with
  | h::tl ->
      if (h = false)
        then false
        else h && (ands tl)
  | [ ] -> true
