
class Payment_tokens {

  final int id;
  final String symbol;
  final String address;
  final String image_url;
  final String name;
  final int decimals;
  final int eth_price;
  final double usd_price;

	Payment_tokens.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		symbol = map["symbol"],
		address = map["address"],
		image_url = map["image_url"],
		name = map["name"],
		decimals = map["decimals"],
		eth_price = map["eth_price"],
		usd_price = map["usd_price"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['symbol'] = symbol;
		data['address'] = address;
		data['image_url'] = image_url;
		data['name'] = name;
		data['decimals'] = decimals;
		data['eth_price'] = eth_price;
		data['usd_price'] = usd_price;
		return data;
	}
}
