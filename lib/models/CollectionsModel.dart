import 'package:nftwebapp/models/collections.dart';

class CollectionsModel {

  final List<Collections> collections;

	CollectionsModel.fromJsonMap(Map<String, dynamic> map): 
		collections = List<Collections>.from(map["collections"].map((it) => Collections.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['collections'] = collections != null ? 
			this.collections.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
