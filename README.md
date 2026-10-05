# Learn to Code with OCaml: Starter Playground

A beginner-friendly, runnable OCaml playground for a long-term "learn to code" mentoring path. Each section of `bin/main.ml` introduces one core idea, and `lessons/exercises.md` has practice tasks that build on it.

## What it covers
1. Values and functions
2. Recursion (how OCaml "loops")
3. Lists and pattern matching
4. Higher-order functions (`List.map`, `List.filter`)
5. Variant types for modelling your own data
6. `option` instead of null or crashes
7. A mini to-do list project using records

## Run it
```bash
# install (macOS/Linux): https://ocaml.org/install
opam install dune
dune exec ./bin/main.exe
# or, without dune:
ocaml bin/main.ml
```

## How I'd teach this (long-term plan)
- **Weeks 1–2:** setup (opam, dune, VS Code + OCaml Platform), the REPL `utop`, values, functions, types.
- **Weeks 3–4:** recursion, lists, pattern matching, small exercises every session.
- **Weeks 5–6:** records, variants, options, modules; reading compiler errors as hints.
- **Weeks 7–8:** a small project you choose (CLI game, text parser, to-do app), plus Git basics.
- **After that:** general programming fundamentals that transfer to Python/JavaScript, or deeper OCaml (functors, Dune libraries, testing).

Every session is hands-on: you write the code, I explain the "why", and you leave with exercises for the week.

## About the mentor
Software engineer (BSc Computer Science, TU Cluj; MSc Business Informatics, TU Wien) who enjoys teaching programming from zero, with patient, practical sessions.
