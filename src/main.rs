use std::fs;
use std::thread;
use std::time::Duration;

use gluesql::prelude::*;

fn main() {
    // let storage = MemoryStorage::default();
    let storage = SledStorage::new("data/test-db").unwrap();
    let mut glue = Glue::new(storage);

    let sqls = fs::read_to_string("sql/test.sql").expect("Failed to open sql file.");

    for sql in sqls.lines() {
        glue.execute(sql).expect("Query Execution Failed.");
        thread::sleep(Duration::from_millis(1000));
    }

    let select_query = "SELECT * FROM tb_test ORDER BY create_time DESC;";

    let result = glue.execute(select_query).unwrap();
    println!("{:?}", result);
}
