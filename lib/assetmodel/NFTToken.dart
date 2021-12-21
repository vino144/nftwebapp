import 'package:nftwebapp/assetmodel/asset_contract.dart';
import 'package:nftwebapp/assetmodel/collection.dart';
import 'package:nftwebapp/assetmodel/owner.dart';
import 'package:nftwebapp/assetmodel/creator.dart';
import 'package:nftwebapp/assetmodel/traits.dart';
import 'package:nftwebapp/assetmodel/top_ownerships.dart';


class NFTToken {

  final int id;
  final String token_id;
  final int num_sales;
  final Object background_color;
  final String image_url;
  final String image_preview_url;
  final String image_thumbnail_url;
  final String image_original_url;
  final Object animation_url;
  final Object animation_original_url;
  final String name;
  final Object description;
  final String external_link;
  final Asset_contract asset_contract;
  final String permalink;
  final Collection collection;
  final Object decimals;
  final String token_metadata;
  final Owner owner;
  final Object sell_orders;
  final Creator creator;
  final List<Traits> traits;
  final Object last_sale;
  final Object top_bid;
  final Object listing_date;
  final bool is_presale;
  final Object transfer_fee_payment_token;
  final Object transfer_fee;
  final List<Object> related_assets;
  final List<Object> orders;
  final List<Object> auctions;
  final bool supports_wyvern;
  final List<Top_ownerships> top_ownerships;
  final Object ownership;
  final Object highest_buyer_commitment;

  NFTToken.fromJsonMap(Map<String, dynamic> map):
		id = map["id"],
		token_id = map["token_id"],
		num_sales = map["num_sales"],
		background_color = map["background_color"],
		image_url = map["image_url"],
		image_preview_url = map["image_preview_url"],
		image_thumbnail_url = map["image_thumbnail_url"],
		image_original_url = map["image_original_url"],
		animation_url = map["animation_url"],
		animation_original_url = map["animation_original_url"],
		name = map["name"],
		description = map["description"],
		external_link = map["external_link"],
		asset_contract = Asset_contract.fromJsonMap(map["asset_contract"]),
		permalink = map["permalink"],
		collection = Collection.fromJsonMap(map["collection"]),
		decimals = map["decimals"],
		token_metadata = map["token_metadata"],
		owner = Owner.fromJsonMap(map["owner"]),
		sell_orders = map["sell_orders"],
		creator = Creator.fromJsonMap(map["creator"]),
		traits = List<Traits>.from(map["traits"].map((it) => Traits.fromJsonMap(it))),
		last_sale = map["last_sale"],
		top_bid = map["top_bid"],
		listing_date = map["listing_date"],
		is_presale = map["is_presale"],
		transfer_fee_payment_token = map["transfer_fee_payment_token"],
		transfer_fee = map["transfer_fee"],
		related_assets = map["related_assets"],
		orders = map["orders"],
		auctions = map["auctions"],
		supports_wyvern = map["supports_wyvern"],
		top_ownerships = List<Top_ownerships>.from(map["top_ownerships"].map((it) => Top_ownerships.fromJsonMap(it))),
		ownership = map["ownership"],
		highest_buyer_commitment = map["highest_buyer_commitment"];

	 Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['token_id'] = token_id;
		data['num_sales'] = num_sales;
		data['background_color'] = background_color;
		data['image_url'] = image_url;
		data['image_preview_url'] = image_preview_url;
		data['image_thumbnail_url'] = image_thumbnail_url;
		data['image_original_url'] = image_original_url;
		data['animation_url'] = animation_url;
		data['animation_original_url'] = animation_original_url;
		data['name'] = name;
		data['description'] = description;
		data['external_link'] = external_link;
		data['asset_contract'] = asset_contract == null ? null : asset_contract.toJson();
		data['permalink'] = permalink;
		data['collection'] = collection == null ? null : collection.toJson();
		data['decimals'] = decimals;
		data['token_metadata'] = token_metadata;
		data['owner'] = owner == null ? null : owner.toJson();
		data['sell_orders'] = sell_orders;
		data['creator'] = creator == null ? null : creator.toJson();
		data['traits'] = traits != null ? 
			this.traits.map((v) => v.toJson()).toList()
			: null;
		data['last_sale'] = last_sale;
		data['top_bid'] = top_bid;
		data['listing_date'] = listing_date;
		data['is_presale'] = is_presale;
		data['transfer_fee_payment_token'] = transfer_fee_payment_token;
		data['transfer_fee'] = transfer_fee;
		data['related_assets'] = related_assets;
		data['orders'] = orders;
		data['auctions'] = auctions;
		data['supports_wyvern'] = supports_wyvern;
		data['top_ownerships'] = top_ownerships != null ? 
			this.top_ownerships.map((v) => v.toJson()).toList()
			: null;
		data['ownership'] = ownership;
		data['highest_buyer_commitment'] = highest_buyer_commitment;
		return data;
	}
}
