module controllers

import vweb
import db.sqlite
import models

['/todos']
pub struct TodoController {
pub mut:
	vweb.Context
	db sqlite.DB
}

pub fn (mut app TodoController) list_todos() vweb.Result {
	todos := sql app.db {
		select from models.Todo
	} or { return app.server_error(500) }

	return app.json(todos)
}

pub fn (mut app TodoController) create_todo() vweb.Result {
	title := app.form['title'] or { return app.text('Title is required') }
	todo := models.Todo{
		title: title
		completed: false
	}
	
	sql app.db {
		insert todo into models.Todo
	} or { return app.server_error(500) }
	
	return app.json(todo)
}

pub fn (mut app TodoController) update_todo(id int) vweb.Result {
	mut todo := sql app.db {
		select from models.Todo where id == id limit 1
	} or { return app.not_found() }
	
	if 'title' in app.form {
		todo.title = app.form['title']
	}
	if 'completed' in app.form {
		todo.completed = app.form['completed'] == 'true'
	}

	sql app.db {
		update models.Todo set title = todo.title, completed = todo.completed where id == id
	} or { return app.server_error(500) }

	return app.json(todo)
}

pub fn (mut app TodoController) delete_todo(id int) vweb.Result {
	sql app.db {
		delete from models.Todo where id == id
	} or { return app.server_error(500) }

	return app.text('Todo deleted')
}