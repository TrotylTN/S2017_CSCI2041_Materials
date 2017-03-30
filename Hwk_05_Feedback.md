## Feedback for Homework 05

Run on March 30, 14:58:00 PM.

+ Pass: Change into directory "Hwk_05".

### Feedback for ``hwk_05.ml``

+ Fail: Check that file "hwk_05.ml" exists.

     "hwk_05.ml" not found.

+ Skip: Check that an OCaml file "hwk_05.ml" has no syntax or type errors.

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `ands [ true; true; true ]` matches the pattern `true`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `ands [ ]` matches the pattern `true`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `ands [ true; false; true ]` matches the pattern `false`.

   

  This test was not run because of an earlier failing test.

### Feedback for ``streams.ml``

+ Fail: Check that file "streams.ml" exists.

     "streams.ml" not found.

+ Skip: Check that an OCaml file "streams.ml" has no syntax or type errors.

  This test was not run because of an earlier failing test.

##### ``cubes_from``

+ Skip: Check that the result of evaluating `head (cubes_from 2)` matches the pattern `8`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `take 5 (cubes_from 3)` matches the pattern `[27; 64; 125; 216; 343]`.

   

  This test was not run because of an earlier failing test.

##### ``drop``

+ Skip: Check that the result of evaluating `head ( drop 3 nats )` matches the pattern `4`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `take 2 ( drop 3 ( squares ) )` matches the pattern `[ 16; 25 ]`.

   

  This test was not run because of an earlier failing test.

##### ``drop_until``

+ Skip: Check that the result of evaluating `head (drop_until (fun v -> v > 35) squares)` matches the pattern `36`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `take 3 (drop_until (fun x -> x > 10) nats)` matches the pattern `[11; 12; 13]`.

   

  This test was not run because of an earlier failing test.

##### ``map``

+ Skip: Check that the result of evaluating `head (map (fun x -> x mod 2 = 0) nats)` matches the pattern `false`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `take 4 (map (fun x -> x mod 2 = 0) nats)` matches the pattern `[false; true; false; true]`.

   

  This test was not run because of an earlier failing test.

##### ``squares_again``

+ Skip: Check that the result of evaluating `head squares_again` matches the pattern `1`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `take 5 squares_again` matches the pattern `[1; 4; 9; 16; 25]`.

   

  This test was not run because of an earlier failing test.

##### square root approximations

+ Skip: Check that the result of evaluating `head (sqrt_approximations 49.0)` is within 1.0 of `25.`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `head (drop 4 (sqrt_approximations 49.0))` is within 0.5 of `8.5`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `head diminishing` is within 1.0 of `16.0`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `head (drop 6 diminishing)` is within 0.05 of `0.25`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `epsilon_diff 0.3 diminishing` is within 0.3 of `0.25`.

   

  This test was not run because of an earlier failing test.

+ Skip: Check that the result of evaluating `precise_calculation` is within 0.05 of `7.07`.

   

  This test was not run because of an earlier failing test.

##### another square root approximation

+ Skip: Check that the result of evaluating `sqrt_threshold 50.0 3.0` is within 0.5 of `7.12`.

   

  This test was not run because of an earlier failing test.

The total score is used only to count the number of tests passed.  Actual point value for individual tests will change for assessment.

#### Total score: _0_ / _30_

