(*  Name: Tiannan Zhou
    Group Member: Henry Middleton
*)

let even n =
  if n mod 2 = 0
    then true
    else false

let rec euclid a b =
  if a > 0 && b > 0
    then
      if a = b
        then a
        else if a < b
          then euclid a (b - a)
          else euclid (a - b) b
    else raise (Failure "Incorrect input: negative arguments")

let frac_mul (x,y) (a,b) =
  if y != 0 && b != 0
    then
      let ansx = x * a in
        let ansy = y * b in
          (ansx, ansy)
    else
      raise (Failure "Incorrect input: denominator is zero")

let frac_add (x,y) (a,b) =
  if y != 0 && b != 0
    then
      (x * b + y * a, y * b)
    else
      raise (Failure "Incorrect input: denominator is zero")

let frac_simplify (x,y) =
  if y = 0
    then
      raise (Failure "Incorrect input: denominator is zero")
    else
      if x = 0
        then (0,1)
        else
          let gcdnum = euclid x y in
            (x / gcdnum, y / gcdnum)

let square_approx n accuracy =
  if n >= 1.
  then
    let rec approchfun lowb upb accu =
      if upb -. lowb <= accu
        then (lowb, upb)
        else
          let midnum = (lowb +. upb) /. 2. in
            if midnum *. midnum > n
              then approchfun lowb midnum accu
              else approchfun midnum upb accu
    in
      approchfun 1.0 n accuracy
  else
    raise (Failure "Incorrect input: input must be not less than 1.0")

let rec max_list alist =
  match alist with
  | [] -> raise (Failure "Incorrect input: your list was empty")
  | hd::[] -> hd
  | hd::tl ->
    let rest_max = max_list tl in
      if hd > rest_max
        then hd
        else rest_max

let rec drop num alist =
  match (num, alist) with
  | (0, alist) -> alist
  | (num, []) -> []
  | (num, hd::tl) -> drop (num - 1) tl

let rec rev alist =
  match alist with
  | [] -> []
  | hd::tl -> (rev tl) @ [hd]

(* Function distance was implemented by Henry Middleton *)
let distance (x1,y1) (x2,y2) =
	sqrt( (x1-.x2)*.(x1-.x2) +. (y1-.y2)*.(y1-.y2) )

(* Function perimeter was implemented by Henry Middleton *)
let perimeter points =
	match points with
	|[] -> 0.0
	| x :: others -> let first = x in
		let rec perhelper f p =
			match p with
			|[] -> 0.0
			|x :: [] -> distance x first
			|x :: y :: others -> distance x y +. perhelper f (y::others)
		in perhelper first points

(* Function length was implemented by Henry Middleton *)
let rec length l =
	match l with
	| [] -> 0
	| e :: others -> 1 + length others

(* Function is_matrix was implemented by Henry Middleton*)
(* Changes made by Tiannan Zhou *)
(* Modified the base case since the original one does not work for matrix with
   just one line, such as [[1;2;3]] *)
let rec is_matrix thing =
	match thing with
	|x :: [] -> true
	|x :: y :: [] -> if ((length x) = (length y)) then true else false
	|x :: y :: rest -> if ((length x) = (length y)) then is_matrix (y :: rest) else false
	|_ -> false

(* Function list_scalar_add was implemented by Henry Middleton *)
let rec list_scalar_add l n =
	match l with
	| [] -> []
	| x :: rest -> (x+n) :: (list_scalar_add rest n)

(* Function matrix_scalar_add was implemented by Henry Middleton *)
let matrix_scalar_add matrix num =
  if is_matrix matrix
    then
      let rec matrix_scalar_add_help matrix num =
  	    match matrix with
    	  |[[]] -> [[]]
    	  |x :: rest -> (list_scalar_add x num) :: (matrix_scalar_add_help rest num)
    	  |[] -> []
      in
        matrix_scalar_add_help matrix num
    else
      raise (Failure "Incorrect input: input not a matrix")

let rec matrix_transpose amatrix =
  if is_matrix amatrix
    then
      let frontelement rowele =
        match rowele with
        | [] -> raise (Failure "frontelement: empty list")
        | hd::tl -> hd
      in
      let backelement rowele =
        match rowele with
        | [] -> raise (Failure "backelement: empty list")
        | hd::tl -> tl
      in
      let rec gethead thematrix =
        match thematrix with
        | [] -> []
        | hd::tl -> (frontelement hd)::(gethead tl)
      in
      let rec getback thematrix =
        match thematrix with
        | [] -> []
        | hd::tl -> (backelement hd)::(getback tl)
      in
        match amatrix with
        | [] -> []
        | []::tl -> []
        | hd::tl -> (gethead amatrix)::(matrix_transpose (getback amatrix))
    else
      raise (Failure "Incorrect input: input not a matrix")


let matrix_multiply amatrix bmatrix =
  if is_matrix amatrix && is_matrix bmatrix
    then
      let rec matrix_multiply_help amatrix bmatrix =
        let transmatrix = matrix_transpose bmatrix in
          let rec timeselement alist blist =
            match (alist, blist) with
            | ([],[]) -> 0
            | (_::_, []) -> raise (Failure "invalid matrix")
            | ([], _::_) -> raise (Failure "invalid matrix")
            | (ahd::atl,bhd::btl) ->
              ahd * bhd + timeselement atl btl
          in
            let rec gothrubmatrix alist bmatrix =
              match bmatrix with
              | [] -> []
              | hd::tl -> (timeselement alist hd)::gothrubmatrix alist tl
            in
              match amatrix with
              | [] -> []
              | hd::tl -> (gothrubmatrix hd transmatrix)::(matrix_multiply_help tl bmatrix)
      in
        matrix_multiply_help amatrix bmatrix
    else
      raise (Failure "Incorrect input: input not a matrix")
