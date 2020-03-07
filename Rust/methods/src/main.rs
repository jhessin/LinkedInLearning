struct Rectangle {
    width: u32,
    height: u32,
}

fn main() {
    let rect1 = Rectangle {
        width: 30,
        height: 50,
    };

    println!("Area = {}", rect1.area());

    println!("Area = {}", Rectangle::area(&rect1));
}

impl Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
}
