#[allow(unused_variables, dead_code)]
fn main() {
    let user1 = User {
        email: String::from("example@xyz.com"),
        username: String::from("jhessin"),
        active: true,
        sign_in_count: 1,
    };

    println!("{}", user1.email);

    let user2 = User {
        email: String::from("user2@abc.com"),
        username: String::from("user2"),
        ..user1
    };
}

#[allow(unused_variables, dead_code)]
struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

#[allow(unused_variables, dead_code)]
fn build_user(email: String, username: String) -> User {
    User {
        email,
        username,
        active: true,
        sign_in_count: 1,
    }
}
