import 'package:flutter/material.dart';

import 'package:task/model/search_model.dart';

// ignore: must_be_immutable
class ListItems extends StatelessWidget {
  ListItems({super.key});
  List<SearchModel> search = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
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
                    icon: const Icon(Icons.tune)),
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
                    borderRadius: BorderRadius.horizontal(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(search[index].photo!),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            search[index].name!,
                          ),
                          subtitle: Text(
                            search[index].subtitle!,
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
              itemCount: search.length,
            ),
          ),
        ],
      ),
    );
  }
}
