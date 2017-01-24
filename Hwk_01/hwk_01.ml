let even n =
  if n mod 2 = 0
    then true
    else false

let rec euclid a b =
  if a = b
    then a
    else if a < b
      then euclid a (b - a)
      else euclid (a - b) b

let frac_mul (x,y) (a,b) =
  let ansx = x * a in
    let ansy = y * b in
      (ansx, ansy)

let frac_add (x,y) (a,b) =
  (x * b + y * a, y * b)

let frac_simplify (x,y) =
  if x = 0
    then (x,y)
    else
      let gcdnum = euclid x y in
        (x / gcdnum, y / gcdnum)

let square_approx n accuracy =
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

let rec max_list alist =
  match alist with
  | [] -> 0
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

let rev alist =
  let rec revfun thelist anslist =
    match thelist with
    | [] -> anslist
    | hd::tl -> revfun tl (hd::anslist)
  in
    revfun alist []

let distance (x1,y1) (x2,y2) =
  let x_dis = x2 -. x1 in
    let y_dis = y2 -. y1 in
      sqrt (x_dis *. x_dis +. y_dis *. y_dis)

let perimeter alist =
  let rec calperimeter thelist firstarg =
    match thelist with
    | [] -> 0.
    | hd::[] -> distance hd firstarg
    | x1::(x2::tl) -> distance x1 x2 +. calperimeter (x2::tl) firstarg
  in
    match alist with
    | [] -> 0.
    | hd::tl -> calperimeter alist hd
