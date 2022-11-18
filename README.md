# serde.ml

A serialization framework for OCaml inspired by [serde-rs](https://github.com/serde-rs).

```ocaml
open Serde

let ( let* ) = Result.bind

type t =
  | Hello
  | Tuple1 of string
  | Tuple2 of string * bool
  | Record3 of { name : string; favorite_number : int; location : string }
[@@deriving serializer, deserializer]

let parse s t =
  let t' = Serde_sexpr.of_string deserialize_t s |> Result.get_ok in
  equal t t'

let%test _ = parse ":Hello" Hello

let%test _ = parse "(:Tuple1 (\"this is a tuple\"))" (Tuple1 "this is a tuple")

let%test _ =
  parse "(:Tuple2 (\"this is a tuple\"  true))"
    (Tuple2 ("this is a tuple", true))

let%test _ =
  parse "(:Record3 (\"Benjamin Sisko\" 9 \"Bajor\"))"
    (Record3
       { name = "Benjamin Sisko"; favorite_number = 9; location = "Bajor" })
```
