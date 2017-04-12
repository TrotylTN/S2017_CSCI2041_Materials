### Feedback for Homework 06

Run on April 12, 12:50:18 PM.

+ Pass: Change into directory "Hwk_06".

#### Feedback for ``tautology.ml``

+ Pass: Check that file "tautology.ml" exists.

+ Pass: Check that an OCaml file "tautology.ml" has no syntax or type errors.

    OCaml file "tautology.ml" has no syntax or type errors.



##### ``eval``

+ Fail: 
Check that the result of evaluating
   ```
   eval (And ( Prop "P", Prop "Q")) [("P",true); ("Q",false)]
   ```
   matches the pattern `false`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value eval
`


+ Fail: 
Check that the result of evaluating
   ```
   eval (And ( Prop "P", Prop "Q")) [("P",true); ("Q",true)]
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value eval
`


+ Fail: 
Check that the result of evaluating
   ```
   eval (Or (Prop "P", Or (Prop "Q", Prop "R"))) [("P",false); ("Q",false); ("R",false)]
   ```
   matches the pattern `false`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value eval
`


+ Fail: 
Check that the result of evaluating
   ```
   eval (Or (Prop "P", Or (Prop "Q", Prop "R"))) [("P",false); ("Q",false); ("R",true)]
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value eval
`


+ Fail: 
Check that the result of evaluating
   ```
   eval (Or (Prop "P", Or (Prop "Q", Not (Prop "R")))) [("P",false); ("Q",false); ("R",true)]
   ```
   matches the pattern `false`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value eval
`


+ Fail: 
Check that the result of evaluating
   ```
   eval (Or (Prop "P", Or (Prop "Q", Not (Prop "R")))) [("P",false); ("Q",false); ("R",false)]
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value eval
`


##### ``freevars``

+ Fail: 
Check that the result of evaluating
   ```
   List.exists ( (=) "P" ) (freevars (And (Prop "P", Prop "Q")))
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value freevars
`


+ Fail: 
Check that the result of evaluating
   ```
   List.exists ( (=) "Q" ) (freevars (Or (Prop "P", Prop "Q")))
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value freevars
`


+ Fail: 
Check that the result of evaluating
   ```
   List.length (freevars (And ( Prop "P", Or (Prop "Q", Prop "P"))))
   ```
   matches the pattern `2`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value freevars
`


+ Fail: 
Check that the result of evaluating
   ```
   freevars (And (True, False))
   ```
   matches the pattern `[ ]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound value freevars
`


##### ``is_tautology``

+ Fail: 
Check that the result of evaluating
   ```
   let f = Or (Prop "P", Not (Prop "P")) in
      match is_tautology f (fun s -> Some s) with 
        | None -> "yes" 
        | Some _ -> "no"
   ```
   matches the pattern `"yes"`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound constructor Or
`


+ Fail: 
Check that the result of evaluating
   ```
   let f = Or (Or (Not (Prop "P"), Prop "Q"), Or (Not (Prop "Q"), Prop "P")) in
      match is_tautology f (fun s -> Some s) with 
        | None -> "yes" 
        | Some _ -> "no"
   ```
   matches the pattern `"yes"`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound constructor Or
`


+ Fail: 
Check that the result of evaluating
   ```
   let f = Or (Prop "P", Prop "Q") in
      match is_tautology f (fun s -> Some s) with 
        | None -> "yes" 
        | Some _ -> "no"
   ```
   matches the pattern `"no"`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound constructor Or
`


+ Fail: 
Check that the result of evaluating
   ```
   let f = And (Prop "P", Prop "Q") in
      match is_tautology f (fun s -> Some s) with 
        | None -> "yes" 
        | Some _ -> "no"
   ```
   matches the pattern `"no"`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound constructor And
`


+ Fail: 
Check that the result of evaluating
   ```
   let f = And (Prop "P", Prop "Q") in
      match is_tautology f (fun s -> Some s) with 
        | None -> "yes" 
        | Some subst when eval f subst = false -> "no" 
        | Some _ -> "fail, error in is_tautology or eval" 
   ```
   matches the pattern `"no"`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound constructor And
`


+ Fail: 
Check that the result of evaluating
   ```
   let f = And (Not (Prop "P"), Or (Prop "Q", Prop "P")) in
      match is_tautology f (fun s -> Some s) with 
        | None -> "yes" 
        | Some subst when eval f subst = false -> "no" 
        | Some _ -> "fail, error in is_tautology or eval" 
   ```
   matches the pattern `"no"`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24mError: Unbound constructor And
`


#### Feedback for ``maze.ml``

+ Fail: Check that file "maze.ml" exists.

     "maze.ml" not found.

+ Skip: Check that an OCaml file "maze.ml" has no syntax or type errors.

  This test was not run because of an earlier failing test.

+ Skip: 
Check that the result of evaluating
   ```
   (maze () = Some [ (2,3); (1,3); (1,2); (2,2); (3,2); (3,3); (3,4); (4,4); (4,5); (3,5) ] ) || 
   (maze () = Some [ (2,3); (1,3); (1,2); (2,2); (3,2); (3,3); (4,3); (5,3); (5,2); (5,1) ] )
   ```
   matches the pattern `true`.

   


  This test was not run because of an earlier failing test.

#### Total score: _0_ / _17_

The total score is used only to count the number of tests passed.  Actual point value for individual tests will change for assessment.
