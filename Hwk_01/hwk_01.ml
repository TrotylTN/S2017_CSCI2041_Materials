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
  let gcdnum = euclid x y in
    (x / gcdnum, y / gcdnum)
