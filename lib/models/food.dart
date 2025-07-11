class FoodModel {
  final String name ; 
  final String description;
  final String? photoAddress;
  final int price ; 
  final String category;

  FoodModel({required this.name, required this.description,  this.photoAddress, required this.price, required this.category});
}