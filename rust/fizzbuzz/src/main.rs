
fn fizzbuzz(number: u32) -> String {
    let mut result : String = "".to_string();
    if number % 3 == 0 {
        result.push_str("fizz")
    }
    if number % 5 == 0 {
        result.push_str("buzz")
    }
    if !result.is_empty() {
        result
    } else {
        number.to_string()
    }
}

fn test(max: u32) {
    for number in 1..max+1 {
        println!("{}", fizzbuzz(number))
    }
}
fn main() {
    test(32);
}
