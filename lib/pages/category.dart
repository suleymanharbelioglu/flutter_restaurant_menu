import 'package:flutter/material.dart';
import 'package:restaurant_menu2/pages/home.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 200,
            color: Colors.green,
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

                Text("ÖZEL MENU YENİLER", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Expanded(child: categoryMenuList()),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: 10,
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
        foodDetails(context);
      },
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text("category menu item " + index.toString()),
                    ),
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                    width: double.infinity,
                    child: Center(child: Text("food image")),
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
              child: Center(child: Text("300" + "₺")),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> foodDetails(BuildContext context) {
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
                        "Food Name",
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
                  Text(
                    "Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.Bu bir bilgi satırıdır.",
                    style: TextStyle(color: Colors.black),
                  ),

                  SizedBox(height: 16),

                  // Mavi 100x100 Container
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Resim",
                        style: TextStyle(color: Colors.white),
                      ),
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
