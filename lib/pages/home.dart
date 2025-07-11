import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_menu2/assets/app_images.dart';
import 'package:restaurant_menu2/data/data.dart';
import 'package:restaurant_menu2/helper/helper.dart';
import 'package:restaurant_menu2/pages/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  minHeight: 180, // Minimum yükseklik 100 piksel
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20,
                ),
                height: MediaQuery.of(context).size.width / 3.5,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sipariş : 05362300400",
                          style: TextStyle(fontSize: 12.w),
                        ),
                        mainMenuButton(context),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Restaurant Menü",
                          style: TextStyle(fontSize: 22.w),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsetsGeometry.only(bottom: 20),
                      child: Text("ANA MENU", style: TextStyle(fontSize: 15.w)),
                    ),
                  ],
                ),
              ),
              homeMenuList(context),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector mainMenuButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Ana Menü'ye tıklandı");
        // buraya yönlendirme veya başka işlem ekleyebilirsin
      },
      child: Container(
        constraints: BoxConstraints(),
        height: MediaQuery.of(context).size.width / 14,
        width: MediaQuery.of(context).size.width / 7,
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          "Ana Menü",
          style: TextStyle(
            color: Colors.white,
            fontSize: 8.w,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget homeMenuList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 20,
        right: MediaQuery.of(context).size.width / 20,
        bottom: MediaQuery.of(context).size.height / 20,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: Data.categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: MediaQuery.of(context).size.width / 20,
          mainAxisSpacing: MediaQuery.of(context).size.height / 20,
          crossAxisCount: Helper.isPortreit(context) ? 2 : 3,
        ),
        itemBuilder: (context, index) {
          return homeMenuItem(index, context);
        },
      ),
    );
  }

  Widget homeMenuItem(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              categoryTitle: Data.categories[index],
              foodList: Data.foodList
                  .where((food) => food.category == Data.categories[index])
                  .toList(),
            ),
          ),
        );
      },
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    Data.categories[index],
                    style: TextStyle(
                      fontSize: (Helper.isPortreit(context) ? 12.w : 8.w),
                    ),
                  ),
                ),
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(color: Colors.transparent),
                width: double.infinity,
                child: Image.asset(
                  AppImages.basePath + Data.categoryPhotoAddress[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
