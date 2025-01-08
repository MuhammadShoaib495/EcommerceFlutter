import 'dart:math';

import 'package:ecommerce_shoaib/house.dart';
import 'package:ecommerce_shoaib/productdetails.dart';
import 'package:ecommerce_shoaib/vrhome.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _animationCompleted = false; // Flag to check if animation is complete

  bool _pressedButton = false;

  void _toggleButton() {
    setState(() {
      _pressedButton = !_pressedButton;
    });
  }

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this, // 'this' refers to the TickerProvider (from the mixin)
    );

    // Define the animation (Tween from 0.0 to 1.0)
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation only once after the screen is loaded
    Future.delayed(Duration(milliseconds: 300), () {
      _controller.forward(); // Start the animation
    });

    // Animation completion listener
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _animationCompleted = true; // Mark animation as complete
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color(0xFFF4F6F6),
          child: Column(
            children: [
              Stack(
                children: [
                  // Curved Bottom Container
                  ClipPath(
                    clipper: CurvedBottomClipper(),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      color: const Color(0xFF013032),
                    ),
                  ),
                  // Animated Icons inside the stack
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 32),
                    // Add padding to the Row
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // Adjust spacing
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // TextField Container
                              Container(
                                width: 300, // Adjust width for better fit
                                child: const TextField(
                                  decoration: InputDecoration(
                                      disabledBorder: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0,
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(42)),
                                      ),
                                      hintText: 'Search for "Foods & Grocery"',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                      prefixIcon: Icon(Icons.search)),
                                ),
                              ),
                              // Shopping Cart Icon
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(22))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.black,
                                      ),
                                      _pressedButton? Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ) : Container()
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 33),
                          child: Column(
                            children: [
                              const Text(
                                'Current Location',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Islamabad, PK',
                                    style: TextStyle(
                                      color: Color(0xFFFDE0A6),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: pi / 5,
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 12.0),
                                      child: Icon(
                                        Icons.navigation_sharp,
                                        color: Color(0xFFFDE0A6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Icons of Meals, veggeis, fruits, and Breads
                  Container(
                      margin: EdgeInsets.only(top: 139, left: 8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFFDE0A6),
                                borderRadius: BorderRadius.circular(22)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: Transform.scale(
                                    scale: 0.6,
                                    child: Image.asset(
                                      'assets/salad.png',
                                    ))),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Meals',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 199, left: 78.0),
                      child: Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFDE0A6),
                                  borderRadius: BorderRadius.circular(22)),
                              child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: Transform.scale(
                                      scale: 0.6,
                                      child: Image.asset(
                                        'assets/harvest.png',
                                      ))),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Fruits',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 225, left: 174.0),
                      child: Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFDE0A6),
                                  borderRadius: BorderRadius.circular(22)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: Transform.scale(
                                      scale: 0.6,
                                      child: Image.asset(
                                        'assets/cheeseburger.png',
                                      ))),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Burgers',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 200, left: 272.0),
                      child: Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFDE0A6),
                                  borderRadius: BorderRadius.circular(22)),
                              child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: Transform.scale(
                                      scale: 0.6,
                                      child: Image.asset(
                                        'assets/bread.png',
                                      ))),),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Breads',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 134, left: 350.0),
                      child: Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFDE0A6),
                                  borderRadius: BorderRadius.circular(22)),
                              child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: Transform.scale(
                                      scale: 0.6,
                                      child: Image.asset(
                                        'assets/fruit.png',
                                      ))),),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Veggies',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        ],
                      )),
                ],
              ),
              //body You might and see more option
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 82),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You might need",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          "See More",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Food images and pricing
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 15, right: 22),
                  child: Row(
                    children: [
                      // Menu list for vegtable and food
                      Container(
                        width: 110,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            AspectRatio(
                                aspectRatio: 1.0, // 1:1 aspect ratio (Square)
                                child: Image.asset(
                                  'assets/dish.png',
                                  height: 110,
                                )),
                            const Text(
                              'Fast Food Special Offer 1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              '500cal',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "17.29\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                label: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.green.withOpacity(0.8),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11)))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 110,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/bigburgerfries.jpg',
                              height: 110,
                            ),
                            const Text(
                              'Burger Fries Special Offer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              '200cal',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "10.39\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                label: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.green.withOpacity(0.8),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11)))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 110,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('hello');
                                Navigator.push(context, MaterialPageRoute(builder: (context) => House(),));
                              },
                              child: Image.asset(
                                'assets/food_dish.png',
                                height: 110,
                              ),
                            ),
                            const Text(
                              'Single Noodles Vegetables',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              '900cal',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "7.29\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            //plus
                            GestureDetector(
                              onTap: _toggleButton,
                              child: _pressedButton
                                  ? Container(
                                // First container
                                width: 200,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(21),
                                    bottomLeft: Radius.circular(21),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.add_circle, color: Colors.white),
                                    Text('1', style: TextStyle(fontSize: 22, fontFamily: 'SFProDisplay')),
                                    Icon(Icons.remove_circle_outline_rounded, color: Colors.white),
                                  ],
                                ),
                              )
                                  : Container(
                                // Second container
                                width: 200,
                                child: ElevatedButton.icon(
                                  onPressed: _toggleButton,
                                  label: const Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green.withOpacity(0.8),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(11),
                                        bottomRight: Radius.circular(11),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: 110,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/vegatables.png',
                              height: 110,
                            ),
                            const Text(
                              'Vegatables in Bulk Special',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              '800gm',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "37.29\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                label: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.green.withOpacity(0.8),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11)))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 110,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/bigburgerfries.jpg',
                              height: 110,
                            ),
                            const Text(
                              'Burger Offer Family Special',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              '800cal',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "12.22\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                label: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.green.withOpacity(0.8),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11)))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Single Child Scroll view for Grocery
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 180,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF4F6F6),
                      ),
                      child: Row(
                        children: [
                          // Grocery Container
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 270,
                              height: 130,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFDE0A6),
                                borderRadius: BorderRadius.circular(22),
                                //background image in grocery
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(18.0),
                                    child: Column(
                                      children: [
                                        Text('Grocery',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500)),
                                        Text('By 12:77pm',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(height: 16),
                                        Text('Free Delivery',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/vegatables.png',
                                  )
                                ],
                              ),
                            ),
                          ),
                          //WholeSale Container
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 130,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFBFC1),
                                borderRadius: BorderRadius.circular(22),
                                //background image in grocery
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Hot '
                                          'Noodles',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text('By 1:77pm',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(height: 16),
                                        Text('Free Delivery',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/food_dish.png',
                                  )
                                ],
                              ),
                            ),
                          ),
                          // Fast Food special
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 130,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFDE0A6),
                                borderRadius: BorderRadius.circular(22),
                                //background image in grocery
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Burger Offer ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text('By 1:77pm',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(height: 16),
                                        Text('Free Delivery',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/dish.png',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              // Featured Store and See More
              const Padding(
                padding: EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Featured Store",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          "See More",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Container(
                      height: 180,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF4F6F6),
                      ),
                      child: Row(
                        children: [
                          // Store user/owner/company details
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Container(
                              width: 270,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12),
                                //background image in grocery
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 48,
                                    margin: const EdgeInsets.only(top: 22),
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 23,
                                      backgroundImage: AssetImage(
                                        'assets/wmfcagency_logo_b.jpg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'WMFCAGENCY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 72.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.electric_bolt,
                                                  size: 16,
                                                  color: Colors.green,
                                                ),
                                                Text(
                                                  'in 12 minutes',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Container(
                              width: 270,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12),
                                //background image in grocery
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 48,
                                    margin: const EdgeInsets.only(top: 22),
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 23,
                                      backgroundImage: AssetImage(
                                        'assets/wmfcagency_logo_b.jpg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'WMFCAGENCY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 72.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.electric_bolt,
                                                  size: 16,
                                                  color: Colors.green,
                                                ),
                                                Text(
                                                  'in 12 minutes',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Container(
                              width: 270,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12),
                                //background image in grocery
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 48,
                                    margin: const EdgeInsets.only(top: 22),
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 23,
                                      backgroundImage: AssetImage(
                                        'assets/wmfcagency_logo_b.jpg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'WMFCAGENCY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 72.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.electric_bolt,
                                                  size: 16,
                                                  color: Colors.green,
                                                ),
                                                Text(
                                                  'in 12 minutes',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11),
                                                )
                                              ],
                                            ),
                                          )
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
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Move to the top-left corner
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    // Draw the top edge (straight line to the right)
    double radius = size.height / 5; // Adjust radius for the curve
    // The center of the arc is below the container
    path.lineTo(size.width, 0);
    // Draw the bottom edge with a curve (arc)
    path.arcToPoint(
      Offset(0, size.height - 170),
      radius: Radius.circular(radius),
      clockwise: true,
    );
    // Close the path to the bottom-left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip unless the size changes
  }
}
