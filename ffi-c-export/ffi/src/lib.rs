extern "C" {
    fn _pen_add1(x: ffi::Number, y: ffi::Number) -> ffi::Number;
}

#[no_mangle]
extern "C" fn _pen_add2(x: ffi::Number, y: ffi::Number) -> ffi::Number {
    unsafe { _pen_add1(x, y) }
}
