let maze_moves (x,y) =
  match (x,y) with
  | (1,1) -> [(2,1)]
  | (1,2) -> [(1,3); (2,2)]
  | (1,3) -> [(1,2); (1,4); (2,3)]
  | (1,4) -> [(1,3); (1,5)]
  | (1,5) -> [(1,4); (2,5)]
  | (2,1) -> [(1,1); (3,1)]
  | (2,2) -> [(1,2); (3,2)]
  | (2,3) -> [(1,3)]
  | (2,4) -> [(2,5); (3,4)]
  | (2,5) -> [(1,5); (2,4)]
  | (3,1) -> [(2,1); (3,2)]
  | (3,2) -> [(3,1); (3,3); (2,2); (4,2)]
  | (3,3) -> [(3,2); (3,4); (4,3)]
  | (3,4) -> [(2,4); (3,3); (4,4)]
  | (3,5) -> [(4,5)]
  | (4,1) -> [(4,2)]
  | (4,2) -> [(4,1); (3,2)]
  | (4,3) -> [(3,3); (5,3)]
  | (4,4) -> [(3,4); (4,5)]
  | (4,5) -> [(3,5); (4,4); (5,5)]
  | (5,1) -> [(5,2)]
  | (5,2) -> [(5,1); (5,3)]
  | (5,3) -> [(5,2); (4,3); (5,4)]
  | (5,4) -> [(5,3)]
  | (5,5) -> [(4,5)]

let is_elem v l =
  List.fold_right (fun x in_rest -> if x = v then true else in_rest) l false

type loc = int * int

let rec search_route (x,y) (past_route: loc list) : loc list option =
  let loclist = maze_moves (x,y)
  in
  let
    check_arrive (x,y) =
      match (x,y) with
      | (3,5) -> true
      | (5,1) -> true
      | _ -> false
  in
  let rec forloc loclist =
    match loclist with
    | pos::tl ->
    (
      match check_arrive pos with
      | true -> Some (past_route @ [pos])
      | false ->
        if (is_elem pos past_route)
          then forloc tl
          else
          (
            match (search_route pos (past_route @ [pos])) with
            | None -> forloc tl
            | Some route -> Some route
          )
    )
    | [ ] -> None
  in
    forloc loclist

exception NotFound

let maze (a: unit) : loc list option =
  search_route (2,3) [(2,3)]
