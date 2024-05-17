import 'package:flutter/material.dart';
import 'addToCart.dart'; // Import the addToCart.dart page

class GreenGarden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green Garden'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // cart logic
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FastFood(),
              ChineseFood(),
              VegFood(),
            ],
          ),
        ),
      ),
    );
  }
}

class FastFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fast Food',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Color(0xffFC6011),
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildFoodItem(context, 'images/shwarma.png', 'Shwarma', 5.99),
              _buildFoodItem(context, 'images/pepperoni.png', 'Pizza', 8.99),
              _buildFoodItem(context, 'images/singara.png', 'Singara', 2.49),
              _buildFoodItem(context, 'images/meatbox.png', 'Meatbox', 6.49),
            ],
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}


class ChineseFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fast Food',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Color(0xffFC6011),
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildFoodItem(context, 'images/shwarma.png', 'Shwarma', 5.99),
              _buildFoodItem(context, 'images/pepperoni.png', 'Pizza', 8.99),
              _buildFoodItem(context, 'images/singara.png', 'Singara', 2.49),
              _buildFoodItem(context, 'images/meatbox.png', 'Meatbox', 6.49),
            ],
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}


class VegFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fast Food',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Color(0xffFC6011),
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildFoodItem(context, 'images/shwarma.png', 'Shwarma', 5.99),
              _buildFoodItem(context, 'images/pepperoni.png', 'Pizza', 8.99),
              _buildFoodItem(context, 'images/singara.png', 'Singara', 2.49),
              _buildFoodItem(context, 'images/meatbox.png', 'Meatbox', 6.49),
            ],
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}




Widget _buildFoodItem(BuildContext context, String imagePath, String title, double price) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddToCartPage(food: imagePath, name: title, price: price)),
      );
    },
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          width: 120.0, 
          height: 120.0, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5.0), 
        Text(
          title,
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
