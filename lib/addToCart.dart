import 'package:flutter/material.dart';
import 'package:easyfood_flutter/cart.dart'; // Import cart.dart file

class AddToCartPage extends StatefulWidget {
  final String food;
  final String name;
  final double price;

  AddToCartPage({required this.food, required this.name, required this.price});

  @override
  _AddToCartPageState createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.price * quantity;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add to Cart'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Image.asset(
              widget.food,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Price: ৳${widget.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quantity: ',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity--;
                                  }
                                });
                              },
                            ),
                            Text(
                              quantity.toString(),
                              style: TextStyle(fontSize: 18),
                            ),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffFC6011),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total: ৳${totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Add to cart logic
                              Cart.addItem(widget.name, quantity, totalPrice); // Add item to cart
                              Navigator.push( // Navigate to cart page
                                context,
                                MaterialPageRoute(builder: (context) => CartPage()),
                              );
                            },
                            child: Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
