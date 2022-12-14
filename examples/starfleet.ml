open Serde

type rank = Captain | Chief_petty_officer
[@@deriving serializer, deserializer]

type t = { name : string; rank : rank } [@@deriving serializer, deserializer]

let obrien = { name = "Miles O'Brien"; rank = Chief_petty_officer }
let sisko = { name = "Benjamin Sisko"; rank = Captain }
