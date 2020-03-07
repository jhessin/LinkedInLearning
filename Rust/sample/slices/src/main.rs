fn main() {
    let s = String::from("Hello, World!");

    let hello = &s[0..5];

    println!("Hello contains = {}", hello);

    let world = &s[7..12];

    println!("World contains = {}", world);
}
