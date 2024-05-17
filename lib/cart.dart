import 'package:easyfood_flutter/customButton.dart';
import 'package:flutter/material.dart';

class Cart {
  static List<CartItem> items = [];

  static void addItem(String name, int quantity, double totalPrice) {
    items.add(CartItem(name: name, quantity: quantity, totalPrice: totalPrice));
  }

  static void removeItem(int index) {
    items.removeAt(index);
  }
}

class CartItem {
  final String name;
  final int quantity;
  final double totalPrice;

  CartItem({required this.name, required this.quantity, required this.totalPrice});
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double total = 0.0;
    double deliveryFee = 44.0; // Define a fixed delivery fee

    for (var item in Cart.items) {
      total += item.totalPrice;
    }
    
    double grandTotal = total + deliveryFee;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Cart.items.length,
              itemBuilder: (context, index) {
                final item = Cart.items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('Quantity: ${item.quantity}, Total: \৳${item.totalPrice.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        Cart.removeItem(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '৳${total.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xffFC6011)),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery fee',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '৳${deliveryFee.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xffFC6011)),
                    ),
                  ],
                ),
                Divider(height: 32.0, thickness: 1.0, color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grand Total',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '৳${grandTotal.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xffFC6011)),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                OrangeButton(
                  text: "Checkout",
                  onPressed: () {
                    // Checkout logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
