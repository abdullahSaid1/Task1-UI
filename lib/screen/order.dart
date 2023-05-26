import 'package:flutter/material.dart';

import '../model/order_model.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                margin: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order #"),
                          Text(orders[index].id.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Date"),
                          Text(orders[index].date.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order #"),
                          Text(orders[index].id.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order #"),
                          Text(orders[index].id.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text('Details')),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('Track')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

var orders = [
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
  Order(id: 53453459, date: '12/2/21', status: 'pendding', totalPrice: 1231),
];
