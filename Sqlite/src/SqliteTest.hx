import craxe.nim.db.Database;

class SqliteTest {
	public static function main() {		
		var database = Database.openDatabase("sqlite://test.db");
		database.exec("CREATE TABLE IF NOT EXISTS users(x INTEGER PRIMARY KEY ASC, name TEXT, email TEXT);");
		var resultSet = database.query("SELECT name, email FROM users");
		for (row in resultSet) {
			var name = "row.getString(0);";
			trace(name);
		}
	}
}
