// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class FoodModel extends Equatable {
  String id;
  String name;
  String desc;
  String image;
  String location;
  String price;
  FoodModel(
      {required this.desc,
      required this.id,
      required this.image,
      required this.location,
      required this.name,
      required this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [desc, name, id, image, location, price];

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
        id: json['id'],
        desc: json['description'],
        name: json['name'],
        image: json['img'],
        location: json['location'],
        price: json['price']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': desc,
      'name': name,
      'img': image,
      'location': location,
      'price': price
    };
  }

  @override
  String toString() {
    return 'FoodModel(id:$id, name:$name, image:$image, desc:$desc, location:$location, price: $price)';
  }
}

class FoodModelList extends Equatable {
  final List<FoodModel> food_info;

  const FoodModelList({
    required this.food_info,
  });

  factory FoodModelList.empty() {
    return const FoodModelList(food_info: []);
  }

  bool get hasFoodData => food_info.isNotEmpty;

  @override
  List<Object?> get props => [food_info];

  factory FoodModelList.fromJson(Map<String, dynamic> json) {
    return FoodModelList(
        food_info: (json['food_info'] as List)
            .map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
            .toList());
  }

  Map<String, dynamic> tojson() {
    return {'food_info': food_info.map((e) => e.toJson()).toList()};
  }

  @override
  String toString() {
    return 'FoodModelList( food_info:$food_info)';
  }
}
