
class User {

  final String username;

	User.fromJsonMap(Map<String, dynamic> map): 
		username = map["username"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['username'] = username;
		return data;
	}
}
