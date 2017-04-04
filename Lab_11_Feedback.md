### Feedback for Lab 11

Run on April 04, 13:34:53 PM.

#### Total score: _8_ / _10_

+ Pass: Change into directory "Lab_11".

+ Pass: Check that file "interpreter.ml" exists.

+ Pass: Check that an OCaml file "interpreter.ml" has no syntax or type errors.

    OCaml file "interpreter.ml" has no syntax or type errors.



+ Pass: Check that the result of evaluating `num_sums` matches the pattern `11`.

   



+ Pass: Check that the result of evaluating `val_sum_evens` matches the pattern `56`.

   



+ Pass: Check that the result of evaluating `val_sum_odds` matches the pattern `49`.

   



+ Pass: Check that the result of evaluating `num_sum_evens` matches the pattern `9`.

   



+ Pass: Check that the result of evaluating `num_sum_odds` matches the pattern `8`.

   



+ Fail: Check that the result of evaluating `lookup "sum_evens" (exec program_3_test [])` matches the pattern `Int 30`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value program_3_test
`


+ Fail: Check that the result of evaluating `lookup "y" (exec program_4 [("x",Int 4)])` matches the pattern `Int 6`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 
   ```
 ;;
[24mError: Unbound value program_4
Hint: Did you mean program_1, program_3 or program_2?

   ```



