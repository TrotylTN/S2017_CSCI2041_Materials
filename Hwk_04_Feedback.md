### Feedback for Homework 04

Run on March 17, 19:04:52 PM.

+ Pass: Change into directory "Hwk_04".

#### Feedback for ``aritmetic.ml``

+ Pass: Check that file "arithmetic.ml" exists.

+ Pass: Check that an OCaml file "arithmetic.ml" has no syntax or type errors.

    OCaml file "arithmetic.ml" has no syntax or type errors.



+ Pass: Check that the result of evaluating `show_expr (Add(Const 1, Const 3))` matches the pattern `"(1+3)"`.

   



+ Pass: Check that the result of evaluating ` show_expr (Add (Const 1, Mul (Const 3, Const 4)))` matches the pattern `"(1+(3*4))"`.

   



+ Pass: Check that the result of evaluating `show_expr (Mul (Add(Const 1, Const 3),  Div(Const 8, Const 4)))` matches the pattern `"((1+3)*(8/4))"`.

   



+ Pass: Check that the result of evaluating `show_pretty_expr (Add (Const 1, Mul (Const 3, Const 4)))` matches the pattern `"1+3*4"`.

   



+ Pass: Check that the result of evaluating `show_pretty_expr (Add (Mul (Const 1, Const 3), Const 4))` matches the pattern `"1*3+4"`.

   



+ Pass: Check that the result of evaluating `show_pretty_expr (Add (Const 1, Add (Const 3, Const 4)))` matches the pattern `"1+(3+4)"`.

   



+ Pass: Check that the result of evaluating `show_pretty_expr (Add (Add (Const 1, Const 3), Const 4))` matches the pattern `"1+3+4"`.

   



+ Pass: Check that the result of evaluating `show_pretty_expr (Mul (Const 4, Add (Const 3, Const 2)))` matches the pattern `"4*(3+2)"`.

   



+ Pass: Check that the result of evaluating `show_pretty_expr (Sub (Sub (Const 1, Const 2), Sub (Const 3, Const 4)))` matches the pattern `"1-2-(3-4)"`.

   



#### Feedback for ``eval.ml``

+ Pass: Check that file "eval.ml" exists.

+ Pass: Check that an OCaml file "eval.ml" has no syntax or type errors.

    OCaml file "eval.ml" has no syntax or type errors.



##### ``freevars``

+ Pass: Check that the result of evaluating `freevars (Add (Value (Int 3), Mul (Id "x", Id "y")))` matches the pattern `["x"; "y"]`.

   



##### ``freevars``

+ Pass: Check that the result of evaluating `freevars (Let ("x", Id "z", Add (Value (Int 3), Mul (Id "x", Id "y"))))` matches the pattern `["z"; "y"]`.

   



##### ``freevars``

+ Pass: Check that the result of evaluating `freevars (Let ("x", Id "x", Add (Value (Int 3), Mul (Id "x", Id "y"))))` matches the pattern `["x"; "y"]`.

   



##### ``freevars``

+ Pass: Check that the result of evaluating `freevars (Lambda ("x", Add (Value (Int 3), Mul (Id "x", Id "y"))))` matches the pattern `["y"]`.

   



##### ``freevars``

+ Pass: Check that the result of evaluating `freevars sumToN_expr` matches the pattern `[]`.

   



##### ``evaluate``

+ Fail: Check that the result of evaluating `evaluate (Add (Value (Int 1), Mul (Value (Int 2), Value (Int 3))))` matches the pattern `Int 7`.

   

   Test failed. The following errors were reported:
` ;;
Exception: Failure "Complete this function...".
`

##### ``evaluate - logical``

+ Fail: Check that the result of evaluating `evaluate (Eq (Value (Int 1), Mul (Value (Int 2), Value (Int 3))))` matches the pattern `Bool false`.

   

   Test failed. The following errors were reported:
` ;;
Exception: Failure "Complete this function...".
`

##### ``evaluate - logical``

+ Fail: Check that the result of evaluating `evaluate (Lt (Value (Int 1), Mul (Value (Int 2), Value (Int 3))))` matches the pattern `Bool true`.

   

   Test failed. The following errors were reported:
` ;;
Exception: Failure "Complete this function...".
`

##### ``evaluate - conditional``

+ Fail: Check that the result of evaluating 
   ```
evaluate (If (Lt (Value (Int 1), Mul (Value (Int 2), Value (Int 3))), Value (Int 4), Value (Int 5)))
   ```
 matches the pattern `Int 4`.

   

   Test failed. The following errors were reported:
` ;;
Exception: Failure "Complete this function...".
`

##### ``evaluate - non-recursive functions``

+ Fail: Check that the result of evaluating `evaluate (App (add, Value (Int 1)))` matches the pattern `Closure ("y", Add (Id "x", Id "y"), [("x", Int 1)])`.

   

   Your solution evaluated incorrectly and produced some part of the following:

 
   ```
 ;;
[24mError: This variant expression is expected to have type environment
       The constructor :: does not belong to type environment

   ```



##### ``evaluate - non-recursive functions``

+ Fail: Check that the result of evaluating `evaluate (App ( (App (add, Value (Int 1))), Value (Int 2)))` matches the pattern `Int 3`.

   

   Test failed. The following errors were reported:
` ;;
Exception: Failure "Complete this function...".
`

##### ``evaluate - recursive functions``

+ Fail: Check that the result of evaluating `evaluate (App (sumToN_expr, Value (Int 10)))` matches the pattern `Int 55`.

   

   Test failed. The following errors were reported:
` ;;
Exception: Failure "Complete this function...".
`

