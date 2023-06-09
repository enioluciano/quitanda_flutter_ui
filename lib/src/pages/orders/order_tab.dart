import 'package:flutter/material.dart';
import 'package:quitanda_virtual_getx/src/config/app_data.dart';
import 'package:quitanda_virtual_getx/src/pages/orders/components/order_tile.dart';

class OrderTab extends StatelessWidget {
  const OrderTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return OrderTile(order: orders[index]);
        },
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemCount: orders.length,
      ),
    );
  }
}
