## Feedback for Homework 07

Run on April 24, 01:38:29 AM.

+ Pass: Change into directory "Hwk_07".

+ Pass: Check that file "hwk_07.ml" exists.

+ Fail: Check that it's possible to build and execute an ocaml script using your code.

**Failure to build script! Output follows:**

```
/usr/bin/ocamldep.opt -modules test.ml > test.ml.depends
/usr/bin/ocamldep.opt -modules hwk_07.ml > hwk_07.ml.depends
/usr/bin/ocamlc.opt -c -o hwk_07.cmo hwk_07.ml
/usr/bin/ocamlc.opt -c -o test.cmo test.ml
+ /usr/bin/ocamlc.opt -c -o test.cmo test.ml
File "test.ml", line 45, characters 13-30:
Error: Unbound module Int_vector
Command exited with code 2.
Hint: Recursive traversal of subdirectories was not enabled for this build,
  as the working directory does not look like an ocamlbuild project (no
  '_tags' or 'myocamlbuild.ml' file). If you have modules in subdirectories,
  you should add the option "-r" or create an empty '_tags' file.
  
  To enable recursive traversal for some subdirectories only, you can use the
  following '_tags' file:
  
      true: -traverse
      <dir1> or <dir2>: traverse
      

```




