type 'a tree = Leaf of 'a
             | Fork of 'a * 'a tree * 'a tree


let t1 = Leaf 5
let t2 = Fork (3, Leaf 3, Fork (2, t1, t1))
let t3 = Fork ("Hello", Leaf "World", Leaf "!")

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
