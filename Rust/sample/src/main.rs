pub fn main() {
    // {
    let x = 1;
    // }

    // x is unaccessible here!
    if x == 1 {
        let a = 10;
        println!("A = {}", a,);
    }

    // a is unaccessible here
    // println!("A = {}", a,);
}
