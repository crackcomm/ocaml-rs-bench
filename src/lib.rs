extern crate ocaml;

use ocaml::{bigarray, List};

#[ocaml::func]
pub unsafe fn func() -> () {
    ()
}

#[ocaml::native_func]
pub unsafe fn native_func() -> ocaml::Value {
    ocaml::Value::none()
}
