module main

import vweb
import db.sqlite
import models

struct App {
	vweb.Context
pub mut:
	db sqlite.DB
}

fn (mut app App) before_request() {
	app.db = sqlite.connect('app.db') or { panic(err) }
}

fn main() {
	db := sqlite.connect('app.db') or { panic('Failed to connect to database: $err') }

	sql db {
		create table models.Todo
	} or { panic('Failed to create table: $err') }

	mut app := &App{}
	vweb.run(app, 3000)
}
