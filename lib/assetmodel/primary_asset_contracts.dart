
class Primary_asset_contracts {

  final String address;
  final String asset_contract_type;
  final String created_date;
  final String name;
  final String nft_version;
  final Object opensea_version;
  final Object owner;
  final String schema_name;
  final String symbol;
  final Object total_supply;
  final String description;
  final String external_link;
  final String image_url;
  final bool default_to_fiat;
  final int dev_buyer_fee_basis_points;
  final int dev_seller_fee_basis_points;
  final bool only_proxied_transfers;
  final int opensea_buyer_fee_basis_points;
  final int opensea_seller_fee_basis_points;
  final int buyer_fee_basis_points;
  final int seller_fee_basis_points;
  final String payout_address;

	Primary_asset_contracts.fromJsonMap(Map<String, dynamic> map): 
		address = map["address"],
		asset_contract_type = map["asset_contract_type"],
		created_date = map["created_date"],
		name = map["name"],
		nft_version = map["nft_version"],
		opensea_version = map["opensea_version"],
		owner = map["owner"],
		schema_name = map["schema_name"],
		symbol = map["symbol"],
		total_supply = map["total_supply"],
		description = map["description"],
		external_link = map["external_link"],
		image_url = map["image_url"],
		default_to_fiat = map["default_to_fiat"],
		dev_buyer_fee_basis_points = map["dev_buyer_fee_basis_points"],
		dev_seller_fee_basis_points = map["dev_seller_fee_basis_points"],
		only_proxied_transfers = map["only_proxied_transfers"],
		opensea_buyer_fee_basis_points = map["opensea_buyer_fee_basis_points"],
		opensea_seller_fee_basis_points = map["opensea_seller_fee_basis_points"],
		buyer_fee_basis_points = map["buyer_fee_basis_points"],
		seller_fee_basis_points = map["seller_fee_basis_points"],
		payout_address = map["payout_address"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['address'] = address;
		data['asset_contract_type'] = asset_contract_type;
		data['created_date'] = created_date;
		data['name'] = name;
		data['nft_version'] = nft_version;
		data['opensea_version'] = opensea_version;
		data['owner'] = owner;
		data['schema_name'] = schema_name;
		data['symbol'] = symbol;
		data['total_supply'] = total_supply;
		data['description'] = description;
		data['external_link'] = external_link;
		data['image_url'] = image_url;
		data['default_to_fiat'] = default_to_fiat;
		data['dev_buyer_fee_basis_points'] = dev_buyer_fee_basis_points;
		data['dev_seller_fee_basis_points'] = dev_seller_fee_basis_points;
		data['only_proxied_transfers'] = only_proxied_transfers;
		data['opensea_buyer_fee_basis_points'] = opensea_buyer_fee_basis_points;
		data['opensea_seller_fee_basis_points'] = opensea_seller_fee_basis_points;
		data['buyer_fee_basis_points'] = buyer_fee_basis_points;
		data['seller_fee_basis_points'] = seller_fee_basis_points;
		data['payout_address'] = payout_address;
		return data;
	}
}
