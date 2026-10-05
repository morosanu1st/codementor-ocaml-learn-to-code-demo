# Practice exercises (with hints)

1. Write `cube : int -> int`. Hint: reuse `square`.
2. Write `rec length : 'a list -> int` using pattern matching (don't use `List.length`).
3. Write `max_list : int list -> int option` that returns `None` for an empty list.
4. Add a `Triangle of float * float` case to `shape` and fix `area`. Notice how the compiler warns you about the missing case: that is OCaml teaching you.
5. Extend the to-do list with `remove : string -> task list -> task list`.
6. Mini project: a command-line number-guessing game using `Random.int` and `read_line`.
