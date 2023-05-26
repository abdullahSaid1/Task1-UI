import 'package:flutter/material.dart';

import 'package:task/model/search_model.dart';

// ignore: must_be_immutable
class WishList extends StatelessWidget {
  WishList({super.key});
  List<SearchModel> fav = [
    SearchModel(
      name: "Computers",
      photo: "assets/images/laptop.png",
      subtitle: "7000",
    ),
    SearchModel(
        name: "phone", photo: "assets/images/phone.png", subtitle: "6000"),
    SearchModel(
        name: "light", photo: "assets/images/light.png", subtitle: "250"),
    SearchModel(
        name: "Office Equipment",
        photo: "assets/images/toll.png",
        subtitle: "1500"),
    SearchModel(
      name: "Elegant Watch",
      photo: "assets/images/watch.jpg",
      subtitle: "3000",
    ),
    SearchModel(
      name: "Fashion Glasses ",
      photo: "assets/images/glas.jpg",
      subtitle: "900",
    ),
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
                        hintText: "Search",
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
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Container(
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(fav[index].photo!),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            fav[index].name!,
                          ),
                          subtitle: Text(
                            fav[index].subtitle!,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_shopping_cart_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              itemCount: fav.length,
            ),
          ),
        ],
      ),
    );
  }
}
