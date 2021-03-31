open Core
open Core_bench

let test_func =
  Bench.Test.create ~name:"func" (fun () -> Ocaml_rs_bench.func ())
;;

let test_native_func =
  Bench.Test.create ~name:"native_func" (fun () ->
      Ocaml_rs_bench.native_func ())
;;

let tests = [ test_func; test_native_func ]

let main () =
  Command.run
    (Command.group
       ~summary:"OCaml-rs benchmarks"
       [ "rust", Bench.make_command tests ])
;;

let () = main ()
