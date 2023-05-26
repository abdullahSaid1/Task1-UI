import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/product.jpg")
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: .5,
            minChildSize: .5,
            maxChildSize: .6,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.ac_unit),
                      title: Text('Item $index'),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

List details = [];
