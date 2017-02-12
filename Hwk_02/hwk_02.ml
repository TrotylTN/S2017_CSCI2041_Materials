(* This file contains a few helper functions and type declarations
   that are to be used in Homework 2. *)

(* Place part 1 functions 'take', 'drop', 'length', 'rev',
   'is_elem_by', 'is_elem', 'dedup', and 'split_by' here. *)

let rec take n l = match l with
  | [] -> []
  | x::xs -> if n > 0 then x::take (n-1) xs else []

let rec drop n l = match l with
  | [] -> []
  | x::xs -> if n > 0 then drop (n-1) xs else l

let length (alist: 'a list) : int = List.length alist

let rev (alist: 'a list) : 'a list = List.rev alist

let is_elem_by (f: 'a -> 'b -> bool) (n: 'b) (alist: 'a list) : bool =
  List.fold_left (fun p_ans t_num -> p_ans ||(f t_num n)) false alist

let is_elem (n: 'a) (alist: 'a list) : bool = is_elem_by (=) n alist

let dedup (alist: 'a list) : 'a list =
  let templist = List.sort (fun a b -> if a < b then -1 else 1) alist
  in
    let checksame cur_num pre_list =
      match pre_list with
      | hd :: restlist -> if hd = cur_num then pre_list else cur_num :: pre_list
      | [] -> [cur_num]
    in List.fold_right checksame templist []

let split_by fop tlist olist =
  let checkdot this_val dotlist = List.fold_left (fun p_ans t_num -> p_ans || fop this_val t_num) false dotlist
  in
    let appendlist cur_num pre_list =
      if checkdot cur_num olist
        then
          match pre_list with
          | hd :: restlist -> [] :: pre_list
          | [] -> [] :: []
        else
          match pre_list with
          | hd :: restlist -> (cur_num :: hd) :: restlist
          | [] -> [cur_num] :: pre_list
    in
      List.fold_right appendlist tlist []


(* Some functions for reading files. *)
let read_file (filename:string) : char list option =
  let rec read_chars channel sofar =
    try
      let ch = input_char channel
      in read_chars channel (ch :: sofar)
    with
    | _ -> sofar
  in
  try
    let channel = open_in filename
    in
    let chars_in_reverse = read_chars channel []
    in Some (rev chars_in_reverse)
  with
    _ -> None




type result = OK
	    | FileNotFound of string
	    | IncorrectNumLines of int
	    | IncorrectLines of (int * int) list
	    | IncorrectLastStanza
