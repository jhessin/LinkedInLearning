use std::fs::File;

fn main() {
    // let _f = File::open("hello.txt").unwrap();
    let _f = File::open("hello.txt").expect("No file yet");
}
