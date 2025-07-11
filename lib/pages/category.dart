import 'package:flutter/material.dart';
import 'package:restaurant_menu2/assets/app_images.dart';
import 'package:restaurant_menu2/models/food.dart';
import 'package:restaurant_menu2/pages/home.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
    required this.categoryTitle,
    required this.foodList,
  });
  final String categoryTitle;
  final List<FoodModel> foodList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.basePath + "background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [backButton(context), mainMenuButton(context)],
                    ),
                    SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Zeytin konağı", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    SizedBox(height: 10),

                    Text("Sipariş : 05362300400"),
                    SizedBox(height: 15),

                    Text(categoryTitle, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              categoryMenuList(),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector mainMenuButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        height: 30,
        width: 90,
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          "Ana Menü",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  GestureDetector backButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 30,
        width: 70,
        color: Colors.black,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back_ios, color: Colors.white, size: 10),
            SizedBox(width: 3),
            Text(
              "Geri",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }

  Widget categoryMenuList() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),

      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: foodList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 40,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return categoryMenuItem(index, context);
        },
      ),
    );
  }

  Widget categoryMenuItem(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        foodDetails(context, foodList[index]);
      },
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    child: Center(child: Text(foodList[index].name)),
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.basePath +
                          foodList[index].photoAddress.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 30,
              width: 60,
              color: Colors.red,
              child: Center(
                child: Text(foodList[index].price.toString() + "₺"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> foodDetails(BuildContext context, FoodModel food) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Başlık ve Kapatma İkonu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Bilgiler
                  Text(food.description, style: TextStyle(color: Colors.black)),

                  SizedBox(height: 16),

                  // Mavi 100x100 Container
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.blue,
                    child: Image.asset(
                      AppImages.basePath + food.photoAddress.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
