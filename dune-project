(lang dune 2.7)

(formatting
 (enabled_for ocaml))

(authors "\197\129ukasz Kurowski")

(maintainers "crackcomm@gmail.com")

(generate_opam_files true)

(package
 (name ocaml-rs-bench)
 (synopsis "OCaml-rs benchmarks")
 (description "OCaml-rs benchmarks")
 (depends
  (core_bench :with-test)
  (conf-rust-2018 :build)
  (ocaml
   (>= 4.07.0))))
