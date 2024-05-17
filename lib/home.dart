import 'package:flutter/material.dart';
import 'package:easyfood_flutter/animations.dart';
import 'package:easyfood_flutter/greengarden.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchAndCart(),
              DeliveryLocation(),
              RecommendedFoods(),
              PopularRestaurants(),
              MostPopularFoods(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchAndCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart icon tap
            },
          ),
        ],
      ),
    );
  }
}

class DeliveryLocation extends StatefulWidget {
  @override
  _DeliveryLocationState createState() => _DeliveryLocationState();
}

class _DeliveryLocationState extends State<DeliveryLocation> {
  String _selectedLocation = 'Knowledge Tower';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Delivering to',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              DropdownButton<String>(
                value: _selectedLocation,
                icon: Icon(Icons.arrow_drop_down, color: Color(0xffFC6011)),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLocation = newValue!;
                  });
                },
                items: <String>[
                  'Knowledge Tower',
                  'YKSG 1',
                  'YKSG 2',
                  'Bonomaya'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                style: TextStyle(color: Colors.black),
                dropdownColor: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
                elevation: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendedFoods extends StatelessWidget {
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
                'Recommended',
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
              _buildFoodItem('images/roti.png', 'Roti'),
              _buildFoodItem('images/dal.png', 'Dal'),
              _buildFoodItem('images/singara.png', 'Singara'),
              _buildFoodItem('images/meatbox.png', 'Meatbox'),
            ],
          ),
        ),
        SizedBox(height: 50.0),
      ],
    );
  }

  Widget _buildFoodItem(String imagePath, String title) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          width: 120.0, // Adjust width if needed
          height: 120.0, // Make height same as width for a square
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5.0), // Add a small gap between image and title
        Text(
          title,
          textAlign: TextAlign.center, // Center the title text
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class PopularRestaurants extends StatelessWidget {
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
                'Popular Restaurants',
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
        _buildImageRow(
          imagePath: 'images/green_garden.png',
          title: 'Green Garden',
          rating: 4.5,
          onTap: () {
            Navigator.push(
              context,
              SlideLeftAnimation(
                  page: GreenGarden(), duration: Duration(milliseconds: 300)),
            );
          },
          totalRatings: 124,
        ),
        _buildImageRow(
          imagePath: 'images/food_court.png',
          title: 'Food Court',
          rating: 4.9,
          totalRatings: 117,
          onTap: () {},
        ),
        _buildImageRow(
          imagePath: 'images/library_cafe.png',
          title: 'Library Cafe',
          rating: 3.9,
          totalRatings: 91,
          onTap: () {},
        ),
        SizedBox(height: 50.0),
      ],
    );
  }

  Widget _buildImageRow(
      {required String imagePath,
      required String title,
      required double rating,
      required num totalRatings,
      required Function()? onTap}) {
    // Added onTap parameter
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        // Wrap with GestureDetector
        onTap: onTap, // Pass onTap callback
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold, // Make text bold
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xffFC6011)), // Star icon
                SizedBox(width: 5.0),
                Text(
                  '$rating',
                  style: TextStyle(fontSize: 14.0, color: Color(0xffFC6011)),
                ),
                Text(
                  ' ($totalRatings ratings)',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MostPopularFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align titles on the left
      children: [
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most Popular',
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
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _popularFoodItem('images/bbq_rice.png', 'Fried rice with BBQ',
                  'Food Court', 150),
              _popularFoodItem('images/biriyani.png', 'Chicken biriyani',
                  'Green Garden', 220),
              _popularFoodItem(
                  'images/pepperoni.png', 'Safu\'s Pizza 8\"', 'Safus', 275),
            ],
          ),
        ),
      ],
    );
  }

  Widget _popularFoodItem(
      String imagePath, String name, String restaurant, double price) {
    return Container(
      width: 200.0,
      height: 200.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 200.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restaurant,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                    Text(
                      '৳${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Color(0xffFC6011),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
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
