import 'package:flutter/material.dart';

import 'package:task/model/profil_model.dart';
import 'package:task/screen/order.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  static const routeName = '/ProfileScreen';
  final TextStyle whiteText = const TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  final whiteBoldText =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  ProfileScreen({super.key});
  List<ProfModel> pro = [
    ProfModel(name: "My Account", icon: Icons.account_circle_rounded),
    ProfModel(name: "My Orders", icon: Icons.shopping_bag_outlined),
    ProfModel(name: "Language Setting", icon: Icons.language),
    ProfModel(name: "Shipping Address", icon: Icons.location_on),
    ProfModel(name: "My Cards", icon: Icons.add_card),
    ProfModel(name: "Setting", icon: Icons.settings),
    ProfModel(name: "privacy Policy", icon: Icons.policy),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/alahly.png'),
                          fit: BoxFit.contain,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "AlAhly",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
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
                        child: Expanded(
                          child: ListTile(
                            leading: Icon(pro[index].icon!),
                            title: Text(pro[index].name!),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey.shade400,
                            ),
                            onTap: () {
                              if (index == 1) {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const OrderScreen(),
                                ));
                              }
                            },
                          ),
                        ),
                      );
                    },
                    itemCount: pro.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
