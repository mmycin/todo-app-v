module models

@[table: 'todos']
pub struct Todo {
	id        int    @[primary; sql: serial]
	title     string @[nonull]
	completed bool   @[default: false; nonull]
}
