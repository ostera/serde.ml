open Error
open Intf

let deserialize_any :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_any"

let deserialize_bool :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_bool"

let deserialize_char :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_char"

let deserialize_int :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_int"

let deserialize_float :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_float"

let deserialize_string :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_string"

let deserialize_unit :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_unit"

let deserialize_tuple :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_tuple"

let deserialize_variant :
    type value tag.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value and type tag = tag) ->
    (module Visitor_intf with type value = tag) ->
    name:string ->
    variants:string list ->
    (value, 'error de_error) result =
 fun _ _ _ _ ~name:_ ~variants:_ -> Error.unimplemented "deserialize_variant"

let deserialize_unit_variant :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_unit_variant"

let deserialize_tuple_variant :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_tuple_variant"

let deserialize_record_variant :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_record_variant"

let deserialize_record :
      'value 'field 'error.
      'state ->
      (module Deserializer_intf with type state = 'state) ->
      (module Rec.Visitor_intf with type value = 'value and type tag = 'field) ->
      (module Rec.Visitor_intf with type value = 'field) ->
      name:string ->
      fields:string list ->
      ('value, 'error Error.de_error) result =
 fun _ _ _ _ ~name:_ ~fields:_ -> Error.unimplemented "deserialize_record"

let deserialize_seq :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_seq"

let deserialize_map :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_map"

let deserialize_identifier :
    type value.
    'state ->
    (module Deserializer_intf with type state = 'state) ->
    (module Visitor_intf with type value = value) ->
    (value, 'error de_error) result =
 fun _ _ _ -> Error.unimplemented "deserialize_identifier"
