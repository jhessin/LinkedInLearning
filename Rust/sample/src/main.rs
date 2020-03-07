pub fn main() {
    let s = String::from("hello"); // s comes into scope
    let mut s = s;

    takes_ownership(&mut s); // s's value moves to the function takes_ownership

    println!("{}", s);
    let x = 5;

    makes_copy(x);

    println!("{}", x);
}

fn takes_ownership(some_string: &mut String) {
    println!("{}", some_string);
    some_string.push_str(", world!");
}

fn makes_copy(some_num: i32) {
    println!("{}", some_num);
}
