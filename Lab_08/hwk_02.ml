(*
Group Member: Tiannan Zhou, Tianjiao Yu
 *)
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


(*start with a tuple which the first element is buffer and the second is the answer. Tianjiao Yu*)
let split_by (fop: 'a -> 'a -> bool) (tlist: 'a list) (olist: 'a list) : 'a list list =
  let checkdot this_val dotlist =
    let judge_pre p_ans t_num = p_ans || fop t_num this_val
    in
      List.fold_left judge_pre false dotlist
  in
    let appendlist cur_num pre_list =
      if checkdot cur_num olist
        then
          match pre_list with
          | hd :: restlist -> [] :: pre_list
          | [] -> [[]]
        else
          match pre_list with
          | hd :: restlist -> (cur_num :: hd) :: restlist
          | [] -> [[]]
    in
      List.fold_right appendlist tlist [[]]


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

type word = char list
type line = word list

let convert_char_list_option_to_char_list (olist: char list option) : char list =
  match olist with
  | None -> raise (Failure "Error in reading file")
  | Some alist -> alist


(*it would be much easier by using list.filter fucntion. My functions contains only three lines if codes.
  Using filter function also save you from checking empty lists.  Tianjiao Yu*)
let convert_to_non_blank_lines_of_words (textlist: char list) : line list =
  let text_by_line = split_by (=) textlist ['\n'];
  in
    let appendlist cur_num pre_list =
      let wordslist = split_by (=) cur_num [' '; '.'; '!'; '?'; ','; ';'; ':'; '-']
      in
        let checkempty cur_num pre_list =
          if (cur_num = [])
            then pre_list
            else cur_num :: pre_list
        in (List.fold_right checkempty wordslist []) :: pre_list
    in List.fold_right appendlist text_by_line []


type result = OK
	    | FileNotFound of string
	    | IncorrectNumLines of int
	    | IncorrectLines of (int * int) list
	    | IncorrectLastStanza

let delete_all_empty_line (a: line list) : line list =
  List.fold_right (fun cur prl -> if cur = [] then prl else cur::prl) a []

let all_lowercase (a: line list) : line list =
  let low_word (w: word): word = List.fold_right (fun cur prl -> (Char.lowercase cur)::prl) w []
  in
    let low_line (l: line): line = List.fold_right (fun cur prl -> (low_word cur)::prl) l []
    in List.fold_right (fun cur prl -> (low_line cur)::prl) a []

let parse_last_stanza (laststanza: line list) : word list =
  let append_by_word cur_word pre_list = cur_word :: pre_list
  in
    let append_by_line curline pre_list = (List.fold_right append_by_word curline []) @ pre_list
    in
      dedup (List.fold_right append_by_line laststanza [])

let only_sort (alist: 'a list) : 'a list =
  List.sort (fun a b -> if a < b then -1 else 1) alist

let parse3stanza (l1: line) (l2: line) (l3: line) (l4: line) (l5: line) (l6: line) (base_num: int) : (int * int) list =
  let ans1 =
    if l1 = l2
      then []
      else [(base_num + 1, base_num + 2)]
  in
    let ans2 =
      if l3 = l4
        then ans1
        else ans1 @ [(base_num + 3, base_num + 4)]
    in
      if ans2 != []
        then
          ans2
        else
          let tot_dict = only_sort (l1 @ l3)
          in
            if tot_dict = (only_sort (l5 @ l6))
              then
                ans2
              else
                ans2 @ [(base_num + 5, base_num + 6)]

let paradelle (filename: string) : result =
  let filecontent = read_file (filename)
  in
    if filecontent = None
      then
        FileNotFound filename
      else
      let a = delete_all_empty_line (convert_to_non_blank_lines_of_words (convert_char_list_option_to_char_list(filecontent)))
      in
      let lower_content = all_lowercase a
      in
      if (length lower_content) != 24
        then IncorrectNumLines (length lower_content)
        else
        match lower_content with
        | a1::a2::a3::a4::a5::a6::restlines ->
          (
            let a_result = parse3stanza a1 a2 a3 a4 a5 a6 0
            in
            match restlines with
            | b1::b2::b3::b4::b5::b6::brestlines ->
              (
                let b_result = a_result @ (parse3stanza b1 b2 b3 b4 b5 b6 6) in
                match brestlines with
                | c1::c2::c3::c4::c5::c6::laststanza ->
                  (
                    let front_result = b_result @ (parse3stanza c1 c2 c3 c4 c5 c6 12) in
                      if length front_result = 0
                        then
                          let tot_dic = dedup (a1 @ a2 @ a3 @ a4 @ a5 @ a6 @
                                               b1 @ b2 @ b3 @ b4 @ b5 @ b6 @
                                               c1 @ c2 @ c3 @ c4 @ c5 @ c6)
                          in if (tot_dic = (parse_last_stanza laststanza))
                            then
                              OK
                            else
                              IncorrectLastStanza
                        else
                          IncorrectLines (front_result)
                  )
                | _ -> IncorrectNumLines (length lower_content)
              )
            | _ -> IncorrectNumLines (length lower_content)
          )
        | _ -> IncorrectNumLines (length lower_content)
