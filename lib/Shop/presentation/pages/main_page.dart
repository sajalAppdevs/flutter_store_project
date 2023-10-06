import 'package:flutter/material.dart';
import 'package:flutter_store_project/Shop/presentation/pages/body_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {},
          child: const Text(
            "Flarence",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "iran_sens",
            ),
          ),
        ),
        actions: [
          Builder(builder: (BuildContext) {
            return IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.black,
                ));
          })
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  "Drawer Header",
                  style: TextStyle(
                    fontFamily: "iran_sens",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  "Item 1",
                  style: TextStyle(
                    fontFamily: "iran_sens",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  "Item 2",
                  style: TextStyle(
                    fontFamily: "iran_sens",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  "Item 3",
                  style: TextStyle(
                    fontFamily: "iran_sens",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              )
            ],
          )),
      body: const BodyPage(),
    );
  }
}
