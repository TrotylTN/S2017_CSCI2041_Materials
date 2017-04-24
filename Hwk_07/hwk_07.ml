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
  type base
  val create: int -> base -> vec
  val from_list: base list -> vec
  val to_list: vec -> base list
  val scalar_add: base -> vec -> vec
  val scalar_mul: base -> vec -> vec
  val scalar_prod: vec -> vec -> base option
  val size: vec -> int
  val to_string: vec -> string
end

module Make_vector (BaseType: Base_type ) :
  (Arithmetic_intf with type base := BaseType.t) = struct

  type base = BaseType.t
  type vec = Vec of base list

  let create (size: int) (v: base) : vec =
    if size < 0
      then Vec([ ])
      else Vec(BaseType.listlize size v)

  let from_list (base_list: base list) : vec = Vec(base_list)

  let to_list (avec: vec) : base list =
    match avec with
    | Vec(base_list) -> base_list

  let scalar_add (b: base) (v: vec) : vec =
    match v with
    | Vec(alist) -> Vec(List.map (BaseType.add b) alist)

  let scalar_mul (b: base) (v: vec) : vec =
    match v with
    | Vec(alist) -> Vec(List.map (BaseType.mul b) alist)

  let scalar_prod (v1: vec) (v2: vec) : base option =
    if size v1 != size v2
      then None
      else match (v1, v2) with
      | Vec(l1, l2) -> Some(BaseType.dot l1 l2)

  let size (v: vec) : int =
    match v with
    | Vec(alist) -> List.length alist

  let to_string (v: vec) : string =
    let help_fun a b =
      ", " ^ (BaseType.to_string a) ^ b
    in
      match v with
      | Vec(hd,tl) ->
          "<< " ^
          string_of_int(size v) ^
          " | " ^
          (BaseType.to_string hd) ^
          (List.fold_right help_fun tl "") ^
          " >>"
      | Vec([ ]) -> "<< 0 | >>"
end

module Int_arithmetic : (Base_type with type t = int) = struct

end


module Complex_arithmetic : (Base_type with type t = float * float) = struct

end

module Int_vector = Make_vector (Int_arithmetic)

module Complex_vector = Make_vector (Complex_arithmetic)
