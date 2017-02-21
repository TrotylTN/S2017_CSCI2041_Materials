### Feedback for Lab 06

Run on February 21, 13:46:55 PM.

+ Pass: Change into directory "Lab_06".

+ Pass: Check that file "lab_06.ml" exists.

+ Pass: Check that an OCaml file "lab_06.ml" has no syntax or type errors.

    OCaml file "lab_06.ml" has no syntax or type errors.



+ Pass: Check that an OCaml file "lab_06.ml" has warnings.

    OCaml file "lab_06.ml" has no warnings.



+ Pass: Check that the result of evaluating `t_size (Fork ("Hello", Leaf "World", Leaf "!"))` matches the pattern `3`.

   



+ Pass: Check that the result of evaluating `t_size (Fork (7, Fork (5, Leaf 1, Leaf 2), Fork (6, Leaf 3, Leaf 4)))` matches the pattern `7`.

   



+ Pass: Check that the result of evaluating `t_size (Leaf 5)` matches the pattern `1`.

   



+ Pass: Check that the result of evaluating `t_sum (Fork (0, Leaf (- 1), Fork(1, Leaf 2, (Leaf (- 2)))))` matches the pattern `0`.

   



+ Pass: Check that the result of evaluating `t_sum (Fork (7, Fork (5, Leaf 1, Leaf 2), Fork (6, Leaf 3, Leaf 4)))` matches the pattern `28`.

   



+ Pass: Check that the result of evaluating `t_sum (Leaf 5)` matches the pattern `5`.

   



+ Pass: Check that the result of evaluating `t_charcount (Fork ("a", Fork ("b", Leaf "c", Leaf "d"), Leaf "e"))` matches the pattern `5`.

   



+ Pass: Check that the result of evaluating `t_charcount (Leaf "a")` matches the pattern `1`.

   



+ Pass: Check that the result of evaluating `t_concat (Fork ("Hello", Leaf "World", Leaf "!"))` matches the pattern `"HelloWorld!"`.

   



+ Pass: Check that the result of evaluating `t_concat (Leaf "Hello!")` matches the pattern `"Hello!"`.

   



+ Fail: Check that the result of evaluating `t_opt_size (Fork (Some 1, Leaf (Some 2), Fork (Some 3, Leaf None, Leaf None)))` matches the pattern `3`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_size
`


+ Fail: Check that the result of evaluating 
   ```
t_opt_size (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))
   ```
 matches the pattern `4`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_size
`


+ Fail: Check that the result of evaluating `t_opt_size (Leaf None)` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_size
`


+ Fail: Check that the result of evaluating `t_opt_size (Fork (None, (Leaf None), (Leaf None)))` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_size
`


+ Fail: Check that the result of evaluating `t_opt_sum (Fork (Some 1, Leaf (Some 2), Fork (Some 3, Leaf None, Leaf None)))` matches the pattern `6`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_sum
`


+ Fail: Check that the result of evaluating `t_opt_sum (Fork (None, (Leaf None), (Leaf None)))` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_sum
`


+ Fail: Check that the result of evaluating `t_opt_sum (Leaf None)` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_sum
`


+ Fail: Check that the result of evaluating `t_opt_charcount (Leaf None)` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_charcount
`


+ Fail: Check that the result of evaluating `t_opt_charcount (Leaf (Some "abcd"))` matches the pattern `4`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_charcount
`


+ Fail: Check that the result of evaluating 
   ```
t_opt_charcount (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))
   ```
 matches the pattern `4`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_charcount
`


+ Fail: Check that the result of evaluating `t_opt_concat (Leaf None)` matches the pattern `""`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_concat
`


+ Fail: Check that the result of evaluating `t_opt_concat (Leaf (Some "abcd"))` matches the pattern `"abcd"`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_concat
`


+ Fail: Check that the result of evaluating 
   ```
t_opt_concat (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))
   ```
 matches the pattern `"abcd"`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value t_opt_concat
`


+ Fail: Check that the result of evaluating `tf_size (Fork ("Hello", Leaf "World", Leaf "!"))` matches the pattern `3`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_size
Hint: Did you mean t_size?
`


+ Fail: Check that the result of evaluating `tf_size (Fork (7, Fork (5, Leaf 1, Leaf 2), Fork (6, Leaf 3, Leaf 4)))` matches the pattern `7`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_size
Hint: Did you mean t_size?
`


+ Fail: Check that the result of evaluating `tf_size (Leaf 5)` matches the pattern `1`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_size
Hint: Did you mean t_size?
`


+ Fail: Check that the result of evaluating `tf_sum (Fork (0, Leaf (- 1), Fork(1, Leaf 2, (Leaf (- 2)))))` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_sum
Hint: Did you mean t_sum?
`


+ Fail: Check that the result of evaluating `tf_sum (Fork (7, Fork (5, Leaf 1, Leaf 2), Fork (6, Leaf 3, Leaf 4)))` matches the pattern `28`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_sum
Hint: Did you mean t_sum?
`


+ Fail: Check that the result of evaluating `tf_sum (Leaf 5)` matches the pattern `5`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_sum
Hint: Did you mean t_sum?
`


+ Fail: Check that the result of evaluating `tf_char_count (Fork ("a", Fork ("b", Leaf "c", Leaf "d"), Leaf "e"))` matches the pattern `5`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_char_count
Hint: Did you mean t_charcount?
`


+ Fail: Check that the result of evaluating `tf_char_count (Leaf "a")` matches the pattern `1`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_char_count
Hint: Did you mean t_charcount?
`


+ Fail: Check that the result of evaluating `tf_concat (Fork ("Hello", Leaf "World", Leaf "!"))` matches the pattern `"HelloWorld!"`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_concat
Hint: Did you mean t_concat?
`


+ Fail: Check that the result of evaluating `tf_concat (Leaf "Hello!")` matches the pattern `"Hello!"`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_concat
Hint: Did you mean t_concat?
`


+ Fail: Check that the result of evaluating `tf_opt_size (Fork (Some 1, Leaf (Some 2), Fork (Some 3, Leaf None, Leaf None)))` matches the pattern `3`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_size
`


+ Fail: Check that the result of evaluating 
   ```
tf_opt_size (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))
   ```
 matches the pattern `4`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_size
`


+ Fail: Check that the result of evaluating `tf_opt_size (Leaf None)` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_size
`


+ Fail: Check that the result of evaluating `tf_opt_size (Fork (None, (Leaf None), (Leaf None)))` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_size
`


+ Fail: Check that the result of evaluating `tf_opt_sum (Fork (Some 1, Leaf (Some 2), Fork (Some 3, Leaf None, Leaf None)))` matches the pattern `6`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_sum
`


+ Fail: Check that the result of evaluating `tf_opt_sum (Fork (None, (Leaf None), (Leaf None)))` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_sum
`


+ Fail: Check that the result of evaluating `tf_opt_sum (Leaf None)` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_sum
`


+ Fail: Check that the result of evaluating `tf_opt_char_count (Leaf None)` matches the pattern `0`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_char_count
`


+ Fail: Check that the result of evaluating `tf_opt_char_count (Leaf (Some "abcd"))` matches the pattern `4`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_char_count
`


+ Fail: Check that the result of evaluating 
   ```
tf_opt_char_count (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))
   ```
 matches the pattern `4`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_char_count
`


+ Fail: Check that the result of evaluating `tf_opt_concat (Leaf None)` matches the pattern `""`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_concat
`


+ Fail: Check that the result of evaluating `tf_opt_concat (Leaf (Some "abcd"))` matches the pattern `"abcd"`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_concat
`


+ Fail: Check that the result of evaluating 
   ```
tf_opt_concat (Fork (Some "a", Leaf (Some "b"), Fork (Some "c", Leaf None, Leaf (Some "d"))))
   ```
 matches the pattern `"abcd"`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value tf_opt_concat
`


+ Fail: Check that the result of evaluating `bt_insert_by Pervasives.compare 3 Empty` matches the pattern `Node (Empty, 3, Empty)`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_insert_by
`


+ Fail: Check that the result of evaluating 
   ```
bt_insert_by Pervasives.compare 2 (bt_insert_by Pervasives.compare 4 (bt_insert_by Pervasives.compare 3 Empty))
   ```
 matches the pattern `Node (Node (Empty, 2, Empty), 3, Node (Empty, 4, Empty))`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_insert_by
`


+ Fail: Check that the result of evaluating 
   ```
bt_insert_by Pervasives.compare 3 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Empty)))
   ```
 matches the pattern `Node (Node (Node (Empty, 3, Empty), 3, Empty), 4, Node (Empty, 5, Empty))`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_insert_by
`


+ Fail: Check that the result of evaluating 
   ```
bt_insert_by Pervasives.compare 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Empty)))
   ```
 matches the pattern `Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty)))`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_insert_by
`


+ Fail: Check that the result of evaluating `bt_elem_by (=) 5 Empty` matches the pattern `false`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_elem_by
`


+ Fail: Check that the result of evaluating 
   ```
 bt_elem_by (=) 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))));
   ```
 matches the pattern `true`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_elem_by
`


+ Fail: Check that the result of evaluating `bt_elem_by (=) 5 Empty` matches the pattern `false`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_elem_by
`


+ Fail: Check that the result of evaluating 
   ```
bt_elem_by (<) 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))))
   ```
 matches the pattern `true`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_elem_by
`


+ Fail: Check that the result of evaluating 
   ```
bt_elem_by (>) 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))))
   ```
 matches the pattern `false`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_elem_by
`


+ Fail: Check that the result of evaluating `bt_to_list Empty` matches the pattern `[ ]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_to_list
`


+ Fail: Check that the result of evaluating `bt_to_list (Node (Empty, 3, Empty))` matches the pattern `[3]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_to_list
`


+ Fail: Check that the result of evaluating 
   ```
bt_to_list (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))))
   ```
 matches the pattern `[3; 4; 5; 6]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_to_list
`


+ Fail: Check that the result of evaluating 
   ```
bt_to_list (Node (Node (Empty, "a",  Empty), "b", Node (Empty, "c",  Node (Empty, "d", Empty))))
   ```
 matches the pattern `["a"; "b"; "c"; "d"]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value bt_to_list
`


+ Fail: Check that the result of evaluating `btf_to_list Empty` matches the pattern `[ ]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_to_list
`


+ Fail: Check that the result of evaluating `btf_to_list (Node (Empty, 3, Empty))` matches the pattern `[3]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_to_list
`


+ Fail: Check that the result of evaluating 
   ```
btf_to_list (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))))
   ```
 matches the pattern `[3; 4; 5; 6]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_to_list
`


+ Fail: Check that the result of evaluating 
   ```
btf_to_list (Node (Node (Empty, "a",  Empty), "b", Node (Empty, "c",  Node (Empty, "d", Empty))))
   ```
 matches the pattern `["a"; "b"; "c"; "d"]`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_to_list
`


+ Fail: Check that the result of evaluating `btf_elem_by (=) 5 Empty` matches the pattern `false`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_elem_by
`


+ Fail: Check that the result of evaluating 
   ```
 btf_elem_by (=) 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))));
   ```
 matches the pattern `true`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_elem_by
`


+ Fail: Check that the result of evaluating `btf_elem_by (=) 5 Empty` matches the pattern `false`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_elem_by
`


+ Fail: Check that the result of evaluating 
   ```
btf_elem_by (<) 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))))
   ```
 matches the pattern `true`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_elem_by
`


+ Fail: Check that the result of evaluating 
   ```
btf_elem_by (>) 6 (Node (Node (Empty, 3, Empty), 4, Node (Empty, 5, Node (Empty, 6, Empty))))
   ```
 matches the pattern `false`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value btf_elem_by
`


