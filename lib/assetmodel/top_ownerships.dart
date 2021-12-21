import 'package:nftwebapp/assetmodel/owner.dart';

class Top_ownerships {

  final Owner owner;
  final String quantity;

	Top_ownerships.fromJsonMap(Map<String, dynamic> map): 
		owner = Owner.fromJsonMap(map["owner"]),
		quantity = map["quantity"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['owner'] = owner == null ? null : owner.toJson();
		data['quantity'] = quantity;
		return data;
	}
}
