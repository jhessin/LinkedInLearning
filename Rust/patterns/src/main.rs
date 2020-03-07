fn main() {
    let name = String::from("ram");

    println!(
        "character at position 2 is {}",
        match name.chars().nth(2) {
            Some(c) => c.to_string(),
            None => "No character found".to_string(),
        }
    );
}
