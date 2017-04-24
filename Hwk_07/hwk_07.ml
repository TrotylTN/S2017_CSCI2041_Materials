module type Base_type = sig
  type t
  val add: t -> t -> t
  val mul: t -> t -> t
  val dot: t list -> t list -> t
  val listlize: int -> t -> t list
  val to_string: t -> string
end

module type Arithmetic_intf = sig
  type vec
  type elemType
  val create: int -> elemType -> vec
  val from_list: elemType list -> vec
  val to_list: vec -> elemType list
  val scalar_add: elemType -> vec -> vec
  val scalar_mul: elemType -> vec -> vec
  val scalar_prod: vec -> vec -> elemType option
  val size: vec -> int
  val to_string: vec -> string
end

module Make_vector (BaseType: Base_type ) :
  (Arithmetic_intf with type elemType = BaseType.t) = struct

  type elemType = BaseType.t
  type vec = Vec of elemType list

  let create (size: int) (v: elemType) : vec =
    if size < 0
      then Vec([ ])
      else Vec(BaseType.listlize size v)

  let from_list (base_list: elemType list) : vec = Vec(base_list)

  let to_list (avec: vec) : elemType list =
    match avec with
    | Vec(base_list) -> base_list

  let scalar_add (b: elemType) (v: vec) : vec =
    match v with
    | Vec(alist) -> Vec(List.map (BaseType.add b) alist)

  let scalar_mul (b: elemType) (v: vec) : vec =
    match v with
    | Vec(alist) -> Vec(List.map (BaseType.mul b) alist)

  let size (v: vec) : int =
  match v with
  | Vec(alist) -> List.length alist

  let scalar_prod (v1: vec) (v2: vec) : elemType option =
    if size v1 != size v2
      then None
      else match (v1, v2) with
      | Vec(l1), Vec(l2) -> Some(BaseType.dot l1 l2)

  let to_string (v: vec) : string =
    let help_fun a b =
      ", " ^ (BaseType.to_string a) ^ b
    in
      match v with
      | Vec(hd::tl) ->
          "<< " ^
          string_of_int(size v) ^
          " | " ^
          (BaseType.to_string hd) ^
          (List.fold_right help_fun tl "") ^
          " >>"
      | Vec([ ]) -> "<< 0 | >>"
end

module Int_arithmetic : (Base_type with type t = int) = struct
  type t = int

  let add (a: int) (b: int) : int = a + b

  let mul (a: int) (b: int) : int = a * b

  let rec listlize (size: int) (v: int) : int list =
    match size with
    | 0 -> [ ]
    | _ -> v :: (listlize (size - 1) v)

  let to_string = string_of_int

  let rec dot (l1: int list) (l2: int list) : int =
    match l1, l2 with
    | hd1::tl1, hd2::tl2 -> hd1 * hd2 + dot tl1 tl2
    | _, _ -> 0

end


module Complex_arithmetic : (Base_type with type t = float * float) = struct
  type t = float * float

  let add (a: float * float) (b: float * float) : float * float =
    match (a, b) with
    | ((a, b), (c, d)) -> (a +. c, b +. d)

  let mul (a: float * float) (b: float * float) : float * float =
    match (a, b) with
    | ((a, b), (c, d)) -> (a *. c -. b *. d, b *. c +. a *. d)

  let rec listlize (size: int) (v: float * float) : (float * float) list =
    match size with
    | 0 -> [ ]
    | _ -> v :: (listlize (size - 1) v)

  let to_string ((a,b): float * float) : string =
    "(" ^ (string_of_float a) ^ "+" ^ (string_of_float b) ^ "i)"

  let rec dot (l1: t list) (l2: t list): float * float =
    match l1, l2 with
    | hd1::tl1, hd2::tl2 -> add (mul hd1 hd2) (dot tl1 tl2)
    | _, _ -> (0., 0.)

end

module Int_vector = Make_vector (Int_arithmetic)

module Complex_vector = Make_vector (Complex_arithmetic)

let v1 = Int_vector.create 10 1

let v2 = Int_vector.from_list [1;2;3;4;5]

let v3 = Int_vector.scalar_add 3 v2

let v4 = Int_vector.scalar_mul 10 v2

let i1 = Int_vector.scalar_prod v3 v4

let l1 = Int_vector.to_list v3

let i2 = Int_vector.size v4

let s1 = Int_vector.to_string v1

let s2 = Int_vector.to_string v2

let s3 = Int_vector.to_string v3

let s4 = Int_vector.to_string v4

let v5 = Complex_vector.from_list [ (1.0, 2.0); (3.0, 4.0); (5.0, 6.0) ]

let v6 = Complex_vector.scalar_add (5.0, 5.0) v5

let c1 = Complex_vector.scalar_prod v5 v6

let s5 = Complex_vector.to_string v5

let s6 = Complex_vector.to_string v6
