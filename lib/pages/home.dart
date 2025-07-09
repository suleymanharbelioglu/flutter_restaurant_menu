import 'package:flutter/material.dart';
import 'package:restaurant_menu2/pages/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [mainMenuButton()],
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

                Text("ANA MENU", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Expanded(child: homeMenuList()),
        ],
      ),
    );
  }

  GestureDetector mainMenuButton() {
    return GestureDetector(
      onTap: () {
        print("Ana Menü'ye tıklandı");
        // buraya yönlendirme veya başka işlem ekleyebilirsin
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

  Widget homeMenuList() {
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
          return homeMenuItem(index, context);
        },
      ),
    );
  }

  Widget homeMenuItem(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => CategoryPage()));
      },
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text("Home menu item " + index.toString()),
                ),
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow),
                width: double.infinity,
                child: Center(child: Text("menu image")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
