(* A tiny "learn to code with OCaml" playground.
   Run with:  dune exec ./bin/main.exe   (or: ocaml bin/main.ml) *)

(* 1. Values and functions *)
let square x = x * x

(* 2. Recursion: the OCaml way to loop *)
let rec factorial n = if n <= 1 then 1 else n * factorial (n - 1)

(* 3. Lists + pattern matching *)
let rec sum = function
  | [] -> 0
  | x :: rest -> x + sum rest

(* 4. Higher-order functions *)
let evens xs = List.filter (fun x -> x mod 2 = 0) xs

(* 5. Variants: model your own data *)
type shape =
  | Circle of float
  | Rectangle of float * float

let area = function
  | Circle r -> Float.pi *. r *. r
  | Rectangle (w, h) -> w *. h

(* 6. Option instead of null / exceptions *)
let safe_div a b = if b = 0 then None else Some (a / b)

(* 7. A mini project: a to-do list *)
type task = { title : string; done_ : bool }

let complete title tasks =
  List.map (fun t -> if t.title = title then { t with done_ = true } else t) tasks

let show_task t = Printf.sprintf "[%s] %s" (if t.done_ then "x" else " ") t.title

let () =
  Printf.printf "square 7 = %d\n" (square 7);
  Printf.printf "factorial 5 = %d\n" (factorial 5);
  Printf.printf "sum [1..5] = %d\n" (sum [ 1; 2; 3; 4; 5 ]);
  Printf.printf "evens = [%s]\n"
    (String.concat "; " (List.map string_of_int (evens [ 1; 2; 3; 4; 5; 6 ])));
  Printf.printf "circle area = %.2f\n" (area (Circle 1.0));
  Printf.printf "rect area = %.2f\n" (area (Rectangle (2.0, 3.0)));
  (match safe_div 10 0 with
   | None -> print_endline "10 / 0 -> None (no crash!)"
   | Some v -> Printf.printf "10 / 0 = %d\n" v);
  let tasks =
    [ { title = "Install OCaml"; done_ = false };
      { title = "Write first function"; done_ = false } ]
  in
  tasks |> complete "Install OCaml" |> List.iter (fun t -> print_endline (show_task t))
