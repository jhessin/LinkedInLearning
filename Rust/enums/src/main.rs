enum IpAddrKind {
    V4(String),
    V6(String),
}

#[allow(dead_code)]
enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(i32, i32, i32),
}

impl Message {
    fn call(&self) {
        println!("I'm inside Call!",);
    }
}
fn main() {
    let _four = IpAddrKind::V4;
    let _six = IpAddrKind::V6;

    let _home = IpAddrKind::V4(String::from("127.0.0.1"));
    let _loopback = IpAddrKind::V6(String::from("::1"));

    let m = Message::Write(String::from("hello"));
    m.call();
}
