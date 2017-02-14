### Feedback for Homework 02

Run on February 14, 14:14:00 PM.

+ Pass: Change into directory "Hwk_02".

+ Pass: Check that file "hwk_02.ml" exists.

+ Fail: Check that an OCaml file "hwk_02.ml" has no syntax or type errors.

    OCaml file hwk_02.ml has errors.

    Run "ocaml hwk_02.ml" to see them.



+ Skip: Check that the result of evaluating `length []` matches the pattern `0`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `length [1;2;3;4;5;6]` matches the pattern `6`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `rev []` matches the pattern `[ ]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `rev [1]` matches the pattern `[1]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `rev [1; 2; 3; 4]` matches the pattern `[4; 3; 2; 1]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem_by (fun x y -> (x+1) = y) 6 [2;3;5;7]` matches the pattern `true`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem_by (fun x y -> (x+1) = y) 0 [2;3;5;7]` matches the pattern `false`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem_by (fun x y -> x < y) 4 [2;3;5;7]` matches the pattern `true`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem_by (fun x y -> x < y) 0 [2;3;5;7]` matches the pattern `false`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem 3 []` matches the pattern `false`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem 3 [1; 2; 3]` matches the pattern `true`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `is_elem 4 [1; 2; 3]` matches the pattern `false`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `List.sort (fun x y -> if x < y then -1 else 1) (dedup [1;1;4;5;2;3;2])` matches the pattern `[1; 2; 3; 4; 5]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating 
   ```
List.sort (fun x y -> if x < y then -1 else 1) (dedup [[13; 1]; [13; 1]; [1; 2]; [10; 5]])
   ```
 matches the pattern `[[1; 2]; [10; 5]; [13; 1]]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `dedup []` matches the pattern `[ ]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `List.sort (fun x y -> if x < y then -1 else 1) (dedup [4;5;2;3])` matches the pattern `[2; 3; 4; 5]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `split_by (=) ['a';'b';'c';'d'] ['c']` matches the pattern `[['a'; 'b']; ['d']]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `split_by (>) ['a';'b';'c';'d'] ['c']` matches the pattern `[[]; []; ['c'; 'd']]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `split_by (=) ['a';'b';'c';'d'] []` matches the pattern `[['a'; 'b'; 'c'; 'd']]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `split_by (=) [] ['x']` matches the pattern `[[ ]]`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `split_by (=) [] []` matches the pattern `[[ ]]`.

   

  This test was not run because of an earlier failing test.

