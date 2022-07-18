extern crate asvangno;
extern crate diesel;

use self::asvangno::*;
use self::models::*;
use self::diesel::prelude::*;

fn main() {
    use asvangno::schema::posts::dsl::*;

    let connection = establish_connection();
    let result = posts
        .load::<Post>(&connection)
        .expect("Error loading posts");

    println!("Displaying posts");
    for post in result {
        println!("{:#?}", post.id);
        println!("{}", post.title);
        println!("{:#?}", post.body);
    }
}
