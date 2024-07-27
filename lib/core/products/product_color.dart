class ProductColor {
  String? hexValue;
  String? colourName;

  ProductColor({this.hexValue, this.colourName});

  factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        hexValue: json['hex_value']  as String?,
        colourName: json['colour_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'hex_value': hexValue,
        'colour_name': colourName,
      };
}
