type 'a tree = Leaf of 'a
             | Fork of 'a * 'a tree * 'a tree


let t1 = Leaf 5
let t2 = Fork (3, Leaf 3, Fork (2, t1, t1))
let t3 = Fork ("Hello", Leaf "World", Leaf "!")
let t4 = Fork (7, Fork (5, Leaf 1, Leaf 2), Fork (6, Leaf 3, Leaf 4))

let rec t_size node =
  match node with
  | Leaf lnode -> 1
  | Fork (fnode, ltree, rtree) -> 1 + t_size ltree + t_size rtree

let rec t_sum node =
  match node with
  | Leaf lnode -> lnode
  | Fork (fnode, ltree, rtree) -> fnode + t_sum ltree + t_sum rtree

let rec t_charcount (node: string tree): int =
  match node with
  | Leaf lnode -> String.length lnode
  | Fork (fnode, ltree, rtree) -> String.length fnode +
                                  t_charcount ltree +
                                  t_charcount rtree

let rec t_concat (node: string tree): string =
  match node with
  | Leaf lnode -> lnode
  | Fork (fnode, ltree, rtree) -> fnode ^ t_concat ltree ^ t_concat rtree

let t5 : string option tree = Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d")))

let rec t_opt_size (node: 'a option tree): int =
  match node with
  | Leaf None -> 0
  | Leaf Some lnode -> 1
  | Fork (None, ltree, rtree) -> 0 + t_opt_size ltree + t_opt_size rtree
  | Fork (Some fnode, ltree, rtree) -> 1 + t_opt_size ltree + t_opt_size rtree

let rec t_opt_sum (node: int option tree): int =
  match node with
  | Leaf None -> 0
  | Leaf Some lnode -> lnode
  | Fork (None, ltree, rtree) -> 0 + t_opt_sum ltree + t_opt_sum rtree
  | Fork (Some fnode, ltree, rtree) -> fnode + t_opt_sum ltree + t_opt_sum rtree

let t7 = (Fork (Some 1, Leaf (Some 2), Fork (Some 3, Leaf None, Leaf None)))
let t8 = (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))

let rec t_opt_charcount (node: string option tree): int =
  match node with
  | Leaf None -> 0
  | Leaf Some lnode -> String.length lnode
  | Fork (None, ltree, rtree) -> 0 +
                                 t_opt_charcount ltree +
                                 t_opt_charcount rtree
  | Fork (Some fnode, ltree, rtree) -> String.length fnode +
                                       t_opt_charcount ltree +
                                       t_opt_charcount rtree

let rec t_opt_concat (node: string option tree): string =
  match node with
  | Leaf None -> ""
  | Leaf Some lnode -> lnode
  | Fork (None, ltree, rtree) -> t_opt_concat ltree ^ t_opt_concat rtree
  | Fork (Some fnode, ltree, rtree) -> fnode ^
                                       t_opt_concat ltree ^
                                       t_opt_concat rtree

let rec tfold (l:'a -> 'b) (f:'a -> 'b -> 'b -> 'b)  (t:'a tree) : 'b =
        match t with
        | Leaf v -> l v
        | Fork (v, t1, t2) -> f v (tfold l f t1) (tfold l f t2)

let tf_size (node: 'a tree) : int =
  tfold (fun a -> 1) (fun a b c -> 1 + b + c) node

let tf_sum (node: int tree) : int =
  tfold (fun a -> a) (fun a b c -> a + b + c) node

let tf_char_count (node: string tree) : int =
  tfold (fun a -> String.length a) (fun a b c -> String.length a + b + c) node

let tf_concat (node: string tree): string =
  tfold (fun a -> a) (fun a b c -> a ^ b ^ c) node
