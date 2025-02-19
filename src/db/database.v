module db

import db.sqlite

pub fn connect() !sqlite.DB {
	return sqlite.connect('app.db')!
}
