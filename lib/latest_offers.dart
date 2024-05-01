import 'package:flutter/material.dart';

class LatestOffers extends StatelessWidget {
  var addgap = SizedBox(height: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latest Offers'),
      ),
      body: ListView(
        children: <Widget>[
          ImageCard(
            imagePath: 'images/pepperoni.png',
            title: 'Pepperoni Pizza',
            discountPercentage: 20,
            price: 250, 
            location: 'Dhaka', 
          ),
          ImageCard(
            imagePath: 'images/biriyani.png',
            title: 'Chicken Biriyani',
            discountPercentage: 15,
            price: 180, 
            location: 'Chittagong', 
          ),
          ImageCard(
            imagePath: 'images/bbq_rice.png',
            title: 'Fried Rice with BBQ',
            discountPercentage: 30,
            price: 320, 
            location: 'Sylhet', 
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int discountPercentage;
  final int price;
  final String location;

  ImageCard({
    required this.imagePath,
    required this.title,
    required this.discountPercentage,
    required this.price,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent, 
      elevation: 0, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: <Widget>[
          Stack(
            children: [
              SizedBox(
                height: 200, 
                width: double.infinity, 
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1), 
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, 
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 0,
                child: Container(
                  padding: EdgeInsets.only(left:8, right:  16, top: 4, bottom: 4), 
                  decoration: BoxDecoration(
                    color: Color(0xffFC6011),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    '$discountPercentage% off',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black, 
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '৳$price', 
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xffFC6011), 
                      ),
                    ),
                    SizedBox(width: 8), 
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey, 
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
