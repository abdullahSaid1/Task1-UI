import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/details.dart';

class SlidersPage extends StatelessWidget {
  static const routeName = '/SlidersPage_1';

  const SlidersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              children: const [
                Text("Special for you"),
                Spacer(
                  flex: 1,
                ),
                TextButton(onPressed: null, child: Text("See More")),
              ],
            ),
            Container(
              height: 300,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      color: Colors.blueGrey,
                      child: Image.asset(
                        "assets/images/product.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemCount: 10,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: const SwiperPagination(),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: const [
                Text("Featured Product"),
                Spacer(
                  flex: 1,
                ),
                TextButton(onPressed: null, child: Text("See More")),
              ],
            ),
            Container(
              height: 300,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Details(),
                      ));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        color: Colors.blueGrey,
                        child: Image.asset(
                          "assets/images/product.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemWidth: 300,
                itemCount: 10,
                layout: SwiperLayout.STACK,
              ),
            ),
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: const ListTile(
                  subtitle: Text("200 "),
                  title: Text("Laptop"),
                )),
            const SizedBox(height: 20.0),
            Row(
              children: const [
                Text("Best Selling Product"),
                Spacer(
                  flex: 1,
                ),
                TextButton(onPressed: null, child: Text("See More")),
              ],
            ),
            Container(
              height: 340,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                fade: 0.0,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                          color: Colors.blueGrey,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/product.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 10,
                scale: 0.9,
                pagination: const SwiperPagination(),
              ),
            ),
            Container(
              height: 300,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      color: Colors.blueGrey,
                      child: Image.asset(
                        "assets/images/product.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemWidth: 300,
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
