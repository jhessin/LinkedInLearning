extern crate rand;

use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    println!("Welcome to my guessing game!",);
    let secret_number = rand::thread_rng().gen_range(1, 101);

    // println!("Secret number is = {}", secret_number);

    loop {
        println!("Please input your guess...",);

        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line!");

        println!("You guessed: {}", guess);

        let guess: u32 = guess.trim().parse().expect("Numbers only please");

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!",),
            Ordering::Greater => println!("Too Big!",),
            Ordering::Equal => {
                println!("You win!",);
                break;
            }
        }
    }
}
