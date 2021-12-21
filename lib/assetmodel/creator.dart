
class Creator {

  final Object user;
  final String profile_img_url;
  final String address;
  final String config;

	Creator.fromJsonMap(Map<String, dynamic> map): 
		user = map["user"],
		profile_img_url = map["profile_img_url"],
		address = map["address"],
		config = map["config"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['user'] = user;
		data['profile_img_url'] = profile_img_url;
		data['address'] = address;
		data['config'] = config;
		return data;
	}
}
