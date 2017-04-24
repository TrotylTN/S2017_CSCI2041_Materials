## Feedback for Homework 07

Run on April 24, 03:01:25 AM.

+ Pass: Change into directory "Hwk_07".

+ Pass: Check that file "hwk_07.ml" exists.

+ Fail: Check that it's possible to build and execute an ocaml script using your code.

**Failure to build script! Output follows:**

```
/usr/bin/ocamldep.opt -modules test.ml > test.ml.depends
/usr/bin/ocamldep.opt -modules hwk_07.ml > hwk_07.ml.depends
/usr/bin/ocamlc.opt -c -o hwk_07.cmo hwk_07.ml
+ /usr/bin/ocamlc.opt -c -o hwk_07.cmo hwk_07.ml
File "hwk_07.ml", line 49, characters 7-11:
Error: Unbound value size
Command exited with code 2.

```




