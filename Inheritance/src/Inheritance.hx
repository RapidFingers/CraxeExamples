class User {
	public final id:Int;
	public final name:String;

	public function new(id:Int, name:String) {
		this.id = id;
		this.name = name;
	}

	public function getKey():String {
		return '${Std.string(id)}_${name}';
	}
}

class GameUser extends User {
	public var scores:Int;

	public function new(id:Int, name:String, scores:Int) {
		super(id, name);
		this.scores = scores;
	}

	override function getKey():String {
		var key = super.getKey();
		return '${key}${scores}';
	}

	public function incScore(v:Int):Int {
		return ++scores;
	}
}

class OnlineGameUser extends GameUser {
	public final room:Int;

	public function new(id:Int, name:String, scores:Int, room:Int) {
		super(id, name, scores);
		this.room = room;
	}

	public function leaveRoom() {
		trace('Room ${room} leaved');
	}
}

class Inheritance {
	static public function main() {
		var user = new OnlineGameUser(1, "Bamtan", 100, 33);
		var key = user.getKey();
		trace(key);
		var scores = user.incScore(1);
		trace(scores);
		user.leaveRoom();
	}
}
