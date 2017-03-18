### Feedback for Homework 04

Run on March 17, 19:01:49 PM.

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

+ Fail: Check that an OCaml file "eval.ml" has no syntax or type errors.

    OCaml file eval.ml has errors.

    Run "ocaml eval.ml" to see them.



##### ``freevars``

+ Skip: Check that the result of evaluating `freevars (Add (Value (Int 3), Mul (Id "x", Id "y")))` matches the pattern `["x"; "y"]`.

   

  This test was not run because of an earlier failing test.

##### ``freevars``

+ Skip: Check that the result of evaluating `freevars (Let ("x", Id "z", Add (Value (Int 3), Mul (Id "x", Id "y"))))` matches the pattern `["z"; "y"]`.

   

  This test was not run because of an earlier failing test.

##### ``freevars``

+ Skip: Check that the result of evaluating `freevars (Let ("x", Id "x", Add (Value (Int 3), Mul (Id "x", Id "y"))))` matches the pattern `["x"; "y"]`.

   

  This test was not run because of an earlier failing test.

##### ``freevars``

+ Skip: Check that the result of evaluating `freevars (Lambda ("x", Add (Value (Int 3), Mul (Id "x", Id "y"))))` matches the pattern `["y"]`.

   

  This test was not run because of an earlier failing test.

##### ``freevars``

+ Skip: Check that the result of evaluating `freevars sumToN_expr` matches the pattern `[]`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate``

+ Skip: Check that the result of evaluating `evaluate (Add (Value (Int 1), Mul (Value (Int 2), Value (Int 3))))` matches the pattern `Int 7`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate - logical``

+ Skip: Check that the result of evaluating `evaluate (Eq (Value (Int 1), Mul (Value (Int 2), Value (Int 3))))` matches the pattern `Bool false`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate - logical``

+ Skip: Check that the result of evaluating `evaluate (Lt (Value (Int 1), Mul (Value (Int 2), Value (Int 3))))` matches the pattern `Bool true`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate - conditional``

+ Skip: Check that the result of evaluating 
   ```
evaluate (If (Lt (Value (Int 1), Mul (Value (Int 2), Value (Int 3))), Value (Int 4), Value (Int 5)))
   ```
 matches the pattern `Int 4`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate - non-recursive functions``

+ Skip: Check that the result of evaluating `evaluate (App (add, Value (Int 1)))` matches the pattern `Closure ("y", Add (Id "x", Id "y"), [("x", Int 1)])`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate - non-recursive functions``

+ Skip: Check that the result of evaluating `evaluate (App ( (App (add, Value (Int 1))), Value (Int 2)))` matches the pattern `Int 3`.

   

  This test was not run because of an earlier failing test.

##### ``evaluate - recursive functions``

+ Skip: Check that the result of evaluating `evaluate (App (sumToN_expr, Value (Int 10)))` matches the pattern `Int 55`.

   

  This test was not run because of an earlier failing test.

