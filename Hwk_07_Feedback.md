## Feedback for Homework 07

Run on April 24, 03:55:38 AM.

+ Pass: Change into directory "Hwk_07".

+ Pass: Check that file "hwk_07.ml" exists.

+ Pass: Check that it's possible to build and execute an ocaml script using your code.
- Pass: `Int_vector.size (Int_vector.create 10 1)` equivalent to `10`

- Pass: `Int_vector.to_list (Int_vector.create 10 1)` equivalent to `[1;1;1;1;1;1;1;1;1;1]`

- Pass: `Int_vector.size (Int_vector.from_list [1;2;3;4;5])` equivalent to `5`

- Pass: `Int_vector.to_list (Int_vector.scalar_add 3 (Int_vector.from_list [1;2;3;4;5]))` equivalent to `[4; 5; 6; 7; 8]`

- Pass: `Int_vector.to_list (Int_vector.scalar_mul 10 (Int_vector.from_list [1;2;3;4;5]))` equivalent to `[10; 20; 30; 40; 50]`

- Pass: `Int_vector.scalar_prod (Int_vector.scalar_add 3 (Int_vector.from_list [1;2;3;4;5])) (Int_vector.scalar_mul 10 (Int_vector.from_list [1;2;3;4;5]))` equivalent to `Some 1000`



**Total: 6 / 6**




