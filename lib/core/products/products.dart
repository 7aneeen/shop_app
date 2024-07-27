import 'product_color.dart';

class Products {
  int? id;
  String? brand;
  String? name;
  String? price;
  String? priceSign;
  String? currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  dynamic rating;
  String? category;
  String? productType;
  List<String>? tagList;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<ProductColor>? productColors;

  Products({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json['id'] as int?,
        brand: json['brand'] as String?,
        name: json['name'] as String?,
        price: json['price'] as String?,
        priceSign: json['price_sign'] as String?,
        currency: json['currency'] as String?,
        imageLink: json['image_link'] as String?,
        productLink: json['product_link'] as String?,
        websiteLink: json['website_link'] as String?,
        description: json['description'] as String?,
        rating:
            json['rating'] != null ? (json['rating'] as num).toDouble() : 4.8,
        category: json['category'] as String?,
        productType: json['product_type'] as String?,
        tagList: json['tag_list'] != null
            ? List<String>.from(json['tag_list'])
            : null,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        productApiUrl: json['product_api_url'] as String?,
        apiFeaturedImage: json['api_featured_image'] as String?,
        productColors: (json['product_colors'] as List<dynamic>?)
            ?.map((e) => ProductColor.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'brand': brand,
        'name': name,
        'price': price,
        'price_sign': priceSign,
        'currency': currency,
        'image_link': imageLink,
        'product_link': productLink,
        'website_link': websiteLink,
        'description': description,
        'rating': rating,
        'category': category,
        'product_type': productType,
        'tag_list': tagList,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'product_api_url': productApiUrl,
        'api_featured_image': apiFeaturedImage,
        'product_colors': productColors?.map((e) => e.toJson()).toList(),
      };
}
