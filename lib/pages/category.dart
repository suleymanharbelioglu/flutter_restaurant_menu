import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_menu2/assets/app_images.dart';
import 'package:restaurant_menu2/helper/helper.dart';
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
      backgroundColor: Colors.transparent,
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
                constraints: BoxConstraints(
                  minHeight: 200, // Minimum yükseklik 100 piksel
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20,
                ),
                height: MediaQuery.of(context).size.width / 4,

                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [backButton(context), mainMenuButton(context)],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 50),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Qr Menü", style: TextStyle(fontSize: 18.w)),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 80),

                    Text(
                      "Sipariş : 05362300400",
                      style: TextStyle(fontSize: 12.w),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 60),

                    Text(categoryTitle, style: TextStyle(fontSize: 20.w)),
                  ],
                ),
              ),
              categoryMenuList(context),
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
        constraints: BoxConstraints(
          maxHeight: 60,
          maxWidth: 120,
          minHeight: 40,
          minWidth: 80,
        ),
        height: MediaQuery.of(context).size.width / 14,
        width: MediaQuery.of(context).size.width / 7,
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
        constraints: BoxConstraints(
          maxHeight: 60,
          maxWidth: 120,
          minHeight: 40,
          minWidth: 80,
        ),
        height: MediaQuery.of(context).size.width / 14,
        width: MediaQuery.of(context).size.width / 7,
        color: Colors.black,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back_ios, color: Colors.white, size: 10),
            SizedBox(width: MediaQuery.of(context).size.width / 70),
            Text(
              "Geri",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width / 50),
          ],
        ),
      ),
    );
  }

  Widget categoryMenuList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 20,
        right: MediaQuery.of(context).size.width / 20,
        bottom: MediaQuery.of(context).size.height / 20,
      ),

      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: foodList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: MediaQuery.of(context).size.width / 20,
          mainAxisSpacing: MediaQuery.of(context).size.height / 20,
          crossAxisCount: Helper.isPortreit(context) ? 2 : 3,
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
              height:
                  MediaQuery.of(context).size.width /
                  (Helper.isPortreit(context) ? 18 : 24),
              width:
                  MediaQuery.of(context).size.width /
                  (Helper.isPortreit(context) ? 9 : 12),
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
    return Helper.isPortreit(context)
        ? portreitFoodDetails(context, food)
        : landscapeFoodDetails(context, food);
  }

  Future<dynamic> portreitFoodDetails(BuildContext context, FoodModel food) {
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
                    height: MediaQuery.of(context).size.height / 2,
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

  Future<dynamic> landscapeFoodDetails(BuildContext context, FoodModel food) {
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sol: Yazılar
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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

                        // Açıklama
                        Text(
                          food.description,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 16),

                  // Sağ: Görsel
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.5,
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
