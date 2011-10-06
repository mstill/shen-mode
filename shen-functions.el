;;; shen-functions.el --- A list of shen functions with documentation strings

;; Copyright (C) 2011 Free Software Foundation, Inc.

;; Author: Eric Schulte <schulte.eric@gmail.com>
;; Version: 0.1
;; Keywords: languages, shen
;; Description: A list of shen functions with documentation strings

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A list of shen functions used by `shen-mode' for syntax
;; highlighting and for eldoc-style documentation hints.

;;; Code:
(defconst shen-functions
  '((* "number --> number --> number" "Number multiplication.")
    (+ "number --> number --> number" "Number addition.")
    (- "number --> number --> number" "Number subtraction.")
    (/ "number --> number --> number" "Number division.")
    (/. "_" "Abstraction builder, receives a variable and an expression; does the job of --> in the lambda calculus.")
    (< "number --> number --> boolean" "Less than.")
    (<-vector nil nil)
    (<= "number --> number --> boolean" "Less than or equal to.")
    (<e> nil nil)
    (= "A --> A --> boolean" "Equal to.")
    (== "A --> B --> boolean" "Equal to.")
    (> "number --> number --> boolean" "Greater than.")
    (>= "number --> number --> boolean" "Greater than or equal to.")
    (@p "_" "Takes two inputs and forms the ordered pair.")
    (@s "_" "Takes two or more inputs and forms a string.")
    (@v "_" "Takes two or more inputs and forms a vector.")
    (abort nil "throw a simple error")
    (adjoin nil "add arg1 to list arg2 if not already a member")
    (and "boolean --> boolean --> boolean" "Boolean and.")
    (append "(list A) --> (list A) --> (list A)" "Appends two lists into one list.")
    (apply "(A --> B) --> (A --> B)" "Applies a function to an input.")
    (arity nil nil)
    (assoc nil nil)
    (assoc-type "symbol --> variable --> symbol" "Associates a Qi type (first input) with  Lisp type (second input)..")
    (average nil "return the average of two numbers")
    (bind nil nil)
    (boolean\? "A --> boolean" "Recognisor for booleans.")
    (bound\? nil "check is a symbol is bound")
    (byte->string nil "return the string represented by bytes")
    (call nil nil)
    (cd "string --> string" "Changes the home directory. (cd \"My Programs\") will cause (load \"hello_world.txt\") to load MyPrograms/hello_world.txt.   (cd \"\")  is the default.")
    (character\? "A --> boolean" "Recognisor for characters.")
    (compile nil nil)
    (complex\? "A --> boolean" "Recognisor for complex numbers.")
    (concat "symbol --> symbol --> symbol" "Concatenates two symbols.")
    (congruent\? "A --> A --> boolean" "Retrns true if objects are identical or else if they are strings or characters which are identical differing at most in case or numbers of equal value (e.g. 1 and 1.0) or tuples composed of congruent elements.")
    (cons "_" "A special form that takes an object e of type A and a list l of type (list A) and produces a list of type (list A) by adding e to the front of  l.")
    (cons\? "--> boolean" "Returns true iff the input is a non-empty list.")
    (core nil nil)
    (cut nil nil)
    (debug "A --> string" "The input is ignored and debugging is returned; but all terminal output is echoed to the file debug.txt until the undebug function is executed.")
    (declare "_" "Takes a function name f and a type t expressed as a list and gives f the type t.")
    (delete-file "string --> string" "The file named in the string is deleted and the string returned.")
    (destroy "_" "Receives the name of a function and removes it and its type from the environment.")
    (difference "(list A) --> (list A) --> (list A)" "Subtracts the elements of the second list from the first")
    (do "_" "A special form: receives n well-typed expressions and evaluates each one, returning the normal form of the last one.")
    (dump "string --> string" "Dumps all user-generated Lisp from the file f denoted by the argument into a file f.lsp.")
    (echo "string --> string" "Echoes all terminal input/output to a file named by string (which is either appended to if it exists or created if not) until the command (echo \"\") is received which switches echo off.")
    (element\? "A -> (list A) --> boolean" "Returns true iff the first input is an element in the second.")
    (empty\? "--> boolean" "Returns true iff the input is [].")
    (error "_" "A special form: takes a string followed by n (n --> 0) expressions. Prints error string.")
    (eval "_" "Evaluates the input.")
    (explode "A --> (list character)" "Explodes an object to a list of characters.")
    (fail nil nil)
    (fix "(A --> A) --> (A --> A)" "Applies a function to generate a fixpoint.")
    (float\? "A --> boolean" "Recognisor for floating point numbers.")
    (floor nil nil)
    (format nil "takes a stream, a format string and args, formats and prints to the stream")
    (freeze "A --> (lazy A)" "Returns a frozen version of its input.")
    (fst "(A * B) --> A" "Returns the first element of a tuple.")
    (fwhen nil nil)
    (gensym "_" "Generates a fresh symbol or variable from a string..")
    (get nil "gets property arg2 from object arg1")
    (get-array "(array A) --> (list number) --> A --> A" "3-place function that takes an array of elements of type A, an index to that array as a list of natural numbers and an expression E of type A.  If an object is stored at the index, then it is returned, otherwise the normal form of E is returned.")
    (get-prop "_" "3-place function that takes a symbol S, a pointer P (which can be a string, symbol or number), and an expression E of any kind and returns the value pointed by P from S  (if one exists) or the normal form of E otherwise.")
    (hash nil "hash an object")
    (hdv nil nil)
    (head "(list A) --> A" "Returns the first element of a list.")
    (identical nil nil)
    (if "boolean --> A --> A" "takes a boolean b and two expressions x and y and evaluates x if b evaluates to true and evaluates y if b evaluates to false.")
    (if-with-checking "string --> (list A)" "If type checking is enabled, raises the string as an error otherwise returns the empty list..")
    (if-without-checking "string --> (list A)" "If type checking is disabled, raises the string as an error otherwise returns the empty list.")
    (include "(list symbol) --> (list symbol)" "Includes the datatype theories or synonyms for use in type checking.")
    (include-all-but "(list symbol) --> (list symbol)" "Includes all loaded datatype theories and synonyms for use in type checking apart from those entered.")
    (inferences "A --> number" "The input is ignored. Returns the number of logical inferences executed since the last call to the top level.")
    (input "_" "0-place function. Takes a user input i and returns the normal form of i.")
    (input+ "_" "Special form. Takes inputs of the form : <expr>. Where d(<expr>) is the type denoted by the choice of expression (e.g. \"number\" denotes the type number). Takes a user input i and returns the normal form of i given i is of the type d(<expr>).")
    (integer\? "A --> boolean" "Recognisor for integers.")
    (interror nil nil)
    (intersection "(list A) --> (list A) --> (list A)" "Computes the intersection of two lists.")
    (intmake-string nil nil)
    (intoutput nil nil)
    (length "(list A) --> integer" "Returns the number of elements in a list.")
    (let nil nil)
    (limit nil nil)
    (lineread "_" "Top level reader of read-evaluate-print loop. Reads elements into a list.  lineread terminates with carriage return when brackets are balanced.  ^ aborts lineread.")
    (list "A .. A --> (list A)" "A special form. Assembles n (n  --> 0) inputs into a list.")
    (load "string --> symbol" "Takes a file name and loads the file, returning loaded as a symbol.")
    (macroexpand nil nil)
    (make-string "string A1 - An --> string" "A special form: takes a string followed by n (n --> 0) well-typed expressions; assembles and returns a string.")
    (map "(A --> B) --> (list A) --> (list B)" "The first input is applied to each member of the second input and the results consed into one list..")
    (mapcan "(A --> (list B)) --> (list A) --> (list B)" "The first input is applied to each member of the second input and the results appended into one list.")
    (maxinferences "number --> number" "Returns the input and as a side-effect, sets a global variable to a number that limits the maximum number of inferences that can be expended on attempting to typecheck a program.  The default is 1,000,000.")
    (mod nil "arg1 mod arg2")
    (newsym "symbol --> symbol" "Generates a fresh symbol from a symbol.")
    (newvar "variable --> variable" "Generates a fresh variable from a variable")
    (nl nil nil)
    (not "boolean --> boolean" "Boolean not.")
    (nth "number --> (list A) --> A" "Gets the nth element of a list numbered from 1.")
    (number\? "A --> boolean" "Recognisor for numbers.")
    (occurences "A --> B --> number" "Returns the number of times the first argument occurs in the second.")
    (occurrences nil "returns the number of occurrences of arg1 in arg2")
    (occurs-check "symbol --> boolean" "Receives either + or - and enables/disables occur checking in Prolog,    datatype definitions and rule closures.   The default is +.")
    (opaque "symbol --> symbol" "Applied to a Lisp macro makes it opaque to Qi.")
    (or "boolean -->  (boolean --> boolean)" "Boolean or.")
    (output "string A1 - An --> string" "A special form: takes a string followed by n (n --> 0) well-typed expressions; prints a message to the screen and returns an object of type string (the string \"done\").")
    (preclude "(list symbol) --> (list symbol)" "Removes the mentioned datatype theories and synonyms from use in type checking.")
    (preclude-all-but "(list symbol) --> (list symbol)" "Removes all the datatype theories and synonyms from use in type checking apart from the ones given.")
    (print "A --> A" "Takes an object and prints it, returning it as a result.")
    (profile "(A --> B) --> (A --> B)" "Takes a function represented by a function name and inserts profiling code returning the function as an output.")
    (profile-results "A --> symbol" "The input is ignored.  Returns a list of profiled functions and their     timings since  profile-results was last used.")
    (ps "_" "Receives a symbol  denoting a Qi function and prints the Lisp source    code associated with the function.")
    (put nil "puts value of arg3 as property arg2 in object arg1")
    (put-array "(array A) --> (list number) --> A --> A" "3-place function that takes an array of elements of type A, an index to that array as a list of natural numbers and an expression E of type A.  The normal form of E is stored at that index and then returned.")
    (put-prop "_" "3-place function that takes a symbol S, a pointer P (a string symbol or number), and an expression E. The pointer P is set to point from S to the normal form of E which is then returned.")
    (quit "_" "0-place function that exits Qi.")
    (random "number --> number" "Given a positive number n, generates a random number between 0 and    n-1.")
    (rational\? "A --> boolean" "Recognisor for rational numbers.")
    (read nil nil)
    (read-char "A --> character" "The input is discarded and the character typed by the user is returned.")
    (read-chars-as-stringlist "(list character) --> (character -->  boolean) -->  (list string)" "Returns a list of strings whose components are taken from the character list. The second input acts as a tokeniser.  Thus (read-chars-as-stringlist [#\\H #\\i #\\Space #\\P #\\a #\\t]  (/. X (= X #\\Space))) will produce [\"Hi\" \"Pat\"].")
    (read-file "string --> (list unit)" "Returns the contents of an ASCII file designated by a string.  Returns a list of units,  where unit is an unspecified type.")
    (read-file-as-charlist "string --> (list character)" "Returns the list of characters from the contents of an ASCII file designated by a string.")
    (read-file-as-string nil nil)
    (real\? "A --> boolean" "Recognisor for real numbers.")
    (remove "A --> (list A) --> (list A)" "Removes all occurrences of an element from a list.")
    (return nil nil)
    (reverse "(list A)--> ?(list A)" "Reverses a list.")
    (round "number--> ?number" "Rounds a number.")
    (save "_" "0 place function. Saves a Qi image.")
    (snd "(A * B) --> B" "Returns the second element of a tuple.")
    (specialise "symbol --> symbol" "Receives the name of a function and turns it into a special form. Special forms are not curried during evaluation or compilation.")
    (speed "number --> number" "Receives a value 0 to 3 and sets the performance of the generated Lisp code, returning its input.  0 is the lowest setting.")
    (spy "symbol --> boolean" "Receives either + or - and respectively enables/disables tracing the    operation of T*.")
    (sqrt "number --> number" "Returns the square root of a number.")
    (step "symbol --> boolean" "Receives either + or - and enables/disables stepping in the trace.")
    (stinput nil nil)
    (string\? "A --> boolean" "Recognisor for strings.")
    (strong-warning "symbol --> boolean" "Takes + or -; if + then warnings are treated as error messages.")
    (subst nil nil)
    (sugar "symbol --> (A --> B) --> number --> (A --> B)" "Receives either in or out as first argument, a function f and an integer    greater than 0 and returns f as a result.  The function f is placed on the    sugaring list at a position determined by the number.")
    (sugar-list "symbol --> (list symbol)" "Receives either in or out as first argument, and returns the list of sugar    functions.")
    (sum nil "sum a list of numbers")
    (symbol\? "A --> boolean" "Recognisor for symbols.")
    (systemf nil nil)
    (tail "(list A) --> (list A)" "Returns all but the first element of a non-empty list.")
    (tc "symbol --> boolean" "Receives either + or - and respectively enables/disables static typing.")
    (tc\? nil "return true if type checking")
    (thaw "(lazy A) --> A" "Receives a frozen input and evaluates it to get the unthawed result..")
    (time "A --> A" "Prints the run time for the evaluation of its input and returns its normal form.")
    (tlv nil nil)
    (track "symbol --> symbol" "Tracks the I/O behaviour of a function.")
    (transparent "symbol --> symbol" "Applied to a Lisp macro makes it transparent to Qi.")
    (tuple\? "A --> boolean" "Recognisor for tuples.")
    (type "_" "Returns a type for its input (if any) or false if the input has no type.")
    (unassoc-type "symbol --> symbol" "Removes any associations with the Qi type in the type association table.")
    (undebug "A --> string" "The input is ignored, undebugging is returned and all terminal output is closed to the file debug.txt.")
    (unify nil nil)
    (unify! nil nil)
    (union "(list A) --> (list A) --> (list A)" "Forms the union of two lists.")
    (unprofile "(A --> B) --> (A --> B)" "Unprofiles a function.")
    (unspecialise "symbol --> symbol" "Receives the name of a function and deletes its special form status.")
    (unsugar "symbol --> (A --> B) --> (A --> B)" "Receives either out or in and the name of a function and removes its status as a sugar function.")
    (untrack "symbol --> symbol" "Untracks a function.")
    (value "_" "Applied to a symbol, returns the global value assigned to it.")
    (variable\? "A --> boolean" "Applied to a variable, returns true.")
    (vector nil nil)
    (vector-> nil nil)
    (vector\? nil nil)
    (version "string --> string" "Changes the version string displayed on startup.")
    (warn "string --> string" "Prints the string as a warning and returns \"done\".  See strong-warning")
    (write-to-file "string --> A --> string" "Writes the second input into a file named in the first input. If the file does not exist, it is created, else it is overwritten. If the second input is a string then it is written to the file without the enclosing quotes.  The first input is returned.")
    (y-or-n\? "string --> boolean" "Prints the string as a question and returns true for y and false for n."))
  "Shen functions taken largely from the Qi documentation by Dr. Mark Tarver.")

(defun shen-functions-as-html ()
  (concat "<html><body>\n"
          (mapconcat
           (lambda (spec)
             (format "<dl><dt>%s [<i>%s</i>]</dt><dd>%s</dd></dl>"
                     (car spec) (cadr spec) (caddr spec)))
           shen-functions "\n")
          "\n</body></html>"))

(provide 'shen-functions)
;;; shen-functions.el ends here
