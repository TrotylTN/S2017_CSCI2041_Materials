module type Comparable = sig
  type t
  val compare: t -> t -> int
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
  val to_string: vec -> string
  val size: vec -> int
end
