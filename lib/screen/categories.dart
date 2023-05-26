import 'package:flutter/material.dart';
import 'package:task/model/category_mode.dart';

// ignore: must_be_immutable
class Items extends StatelessWidget {
  Items({super.key});
  List<CateModel> categories = [
    CateModel(name: "Computers", photo: "assets/images/laptop.png"),
    CateModel(name: "phone", photo: "assets/images/phone.png"),
    CateModel(name: "light", photo: "assets/images/light.png"),
    CateModel(name: "Office Equipment", photo: "assets/images/toll.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    color: Colors.blue,
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart)),
              ),
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    color: Colors.blue,
                    onPressed: () {},
                    icon: const Icon(Icons.notifications)),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.horizontal(),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 4,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(categories[index].photo!),
                        fit: BoxFit.cover,
                      )),
                  alignment: Alignment.topRight,
                  child: Text(
                    categories[index].name!,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 248, 248),
                      fontSize: 15,
                    ),
                  ),
                );
              },
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
