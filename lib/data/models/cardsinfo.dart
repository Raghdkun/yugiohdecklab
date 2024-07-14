// // To parse this JSON data, do
// //
// //     final cardsDataModel = cardsDataModelFromJson(jsonString);

// import 'dart:convert';

// CardsDataModel cardsDataModelFromJson(String str) => CardsDataModel.fromJson(json.decode(str));

// String cardsDataModelToJson(CardsDataModel data) => json.encode(data.toJson());

// class CardsDataModel {
//     CardsDataModel({
//         required this.data,
//     });

//     List<Datum> data;

//     factory CardsDataModel.fromJson(Map<String, dynamic> json) => CardsDataModel(
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class Datum {
//     Datum({
//         required this.id,
//         required this.name,
//         required this.type,
//         required this.frameType,
//         required this.desc,
//         required this.atk,
//         required this.def,
//         required this.level,
//         required this.race,
//         required this.attribute,
//         required this.cardSets,
//         required this.cardImages,
//         required this.cardPrices,
//     });

//     int id;
//     String name;
//     String type;
//     String frameType;
//     String desc;
//     int atk;
//     int def;
//     int level;
//     String race;
//     String attribute;
//     List<CardSet> cardSets;
//     List<CardImage> cardImages;
//     List<CardPrice> cardPrices;

//     factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         name: json["name"],
//         type: json["type"],
//         frameType: json["frameType"],
//         desc: json["desc"],
//         atk: json["atk"],
//         def: json["def"],
//         level: json["level"],
//         race: json["race"],
//         attribute: json["attribute"],
//         cardSets: List<CardSet>.from(json["card_sets"].map((x) => CardSet.fromJson(x))),
//         cardImages: List<CardImage>.from(json["card_images"].map((x) => CardImage.fromJson(x))),
//         cardPrices: List<CardPrice>.from(json["card_prices"].map((x) => CardPrice.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "type": type,
//         "frameType": frameType,
//         "desc": desc,
//         "atk": atk,
//         "def": def,
//         "level": level,
//         "race": race,
//         "attribute": attribute,
//         "card_sets": List<dynamic>.from(cardSets.map((x) => x.toJson())),
//         "card_images": List<dynamic>.from(cardImages.map((x) => x.toJson())),
//         "card_prices": List<dynamic>.from(cardPrices.map((x) => x.toJson())),
//     };
// }

// class CardImage {
//     CardImage({
//         required this.id,
//         required this.imageUrl,
//         required this.imageUrlSmall,
//         required this.imageUrlCropped,
//     });

//     int id;
//     String imageUrl;
//     String imageUrlSmall;
//     String imageUrlCropped;

//     factory CardImage.fromJson(Map<String, dynamic> json) => CardImage(
//         id: json["id"],
//         imageUrl: json["image_url"],
//         imageUrlSmall: json["image_url_small"],
//         imageUrlCropped: json["image_url_cropped"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "image_url": imageUrl,
//         "image_url_small": imageUrlSmall,
//         "image_url_cropped": imageUrlCropped,
//     };
// }

// class CardPrice {
//     CardPrice({
//         required this.cardmarketPrice,
//         required this.tcgplayerPrice,
//         required this.ebayPrice,
//         required this.amazonPrice,
//         required this.coolstuffincPrice,
//     });

//     String cardmarketPrice;
//     String tcgplayerPrice;
//     String ebayPrice;
//     String amazonPrice;
//     String coolstuffincPrice;

//     factory CardPrice.fromJson(Map<String, dynamic> json) => CardPrice(
//         cardmarketPrice: json["cardmarket_price"],
//         tcgplayerPrice: json["tcgplayer_price"],
//         ebayPrice: json["ebay_price"],
//         amazonPrice: json["amazon_price"],
//         coolstuffincPrice: json["coolstuffinc_price"],
//     );

//     Map<String, dynamic> toJson() => {
//         "cardmarket_price": cardmarketPrice,
//         "tcgplayer_price": tcgplayerPrice,
//         "ebay_price": ebayPrice,
//         "amazon_price": amazonPrice,
//         "coolstuffinc_price": coolstuffincPrice,
//     };
// }

// class CardSet {
//     CardSet({
//         required this.setName,
//         required this.setCode,
//         required this.setRarity,
//         required this.setRarityCode,
//         required this.setPrice,
//     });

//     String setName;
//     String setCode;
//     String setRarity;
//     String setRarityCode;
//     String setPrice;

//     factory CardSet.fromJson(Map<String, dynamic> json) => CardSet(
//         setName: json["set_name"],
//         setCode: json["set_code"],
//         setRarity: json["set_rarity"],
//         setRarityCode: json["set_rarity_code"],
//         setPrice: json["set_price"],
//     );

//     Map<String, dynamic> toJson() => {
//         "set_name": setName,
//         "set_code": setCode,
//         "set_rarity": setRarity,
//         "set_rarity_code": setRarityCode,
//         "set_price": setPrice,
//     };
// }
