import 'package:ecommerce_shoaib/house.dart';
import 'package:ecommerce_shoaib/vrhome.dart';
import 'package:flutter/material.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  bool isExpanded = false;
  bool _favourited = false;

  void _toggledFavourited() {
    setState(() {
      _favourited = !_favourited;
    });
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      body: Stack(
        children: [
          Column(
            children: [],
          ),
          Container(
            height: 190,
            color: const Color(0xFF013032),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 6.0, left: 18.0, right: 2.0, bottom: 78),
              child: Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                        ),
                      )),
                  SizedBox(
                    width: 72,
                  ),
                  Text(
                    'Product Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                       Text(
                          '1',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //ClipPath
          ClipPath(
            clipper: CurvedTopClipper(),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 100),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Icons for arrow up
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.arrow_drop_up_sharp,
                        size: 27,
                        color: Colors.white,
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            //upward arrow
                            SizedBox(
                              height: 34,
                            ),
                            //image food
                            Container(
                              width: 400,
                              child: Image.asset('assets/food_dish.png'),
                            ),
                            // Single Noodels
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          'Single Noodles Vegetables',
                                          softWrap: true,
                                          style: TextStyle(
                                              fontFamily: "SFProDisplay",
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 29),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            '900 cal',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: _toggledFavourited,
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(22),
                                          color: Colors.white),
                                      child: _favourited? Icon(
                                        Icons.favorite,
                                        color:Colors.orange,
                                      ) : Icon(
                                        Icons.favorite,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            // Pricing
                            Container(
                              padding: EdgeInsets.only(
                                  left: 18, right: 18, top: 8.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "7.29\$",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Row(
                                      children: [
                                        Container(
                                            width: 22,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                            ),
                                            child: Icon(
                                              Icons.bolt,
                                              size: 14,
                                              color: Colors.white,
                                            )),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text('Available on fast delivery'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            //Icons
                            Container(
                              padding: EdgeInsets.only(
                                  left: 18, right: 18, top: 12.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 2),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.deepOrange
                                                .withOpacity(0.7),
                                          ),
                                          child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Image.asset(
                                                'assets/warm-water.png',
                                                width: 30,
                                                height: 30,
                                              ))),
                                      SizedBox(width: 8),
                                      Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.blue.withOpacity(0.7),
                                          ),
                                          child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Image.asset(
                                                'assets/leaves.png',
                                                width: 30,
                                                height: 30,
                                              ))),
                                      SizedBox(width: 8),
                                      Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color:
                                                Colors.green.withOpacity(0.7),
                                          ),
                                          child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Image.asset(
                                                'assets/kcal.png',
                                                width: 30,
                                                height: 30,
                                              ))),
                                    ],
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Icon(
                                          Icons.star_rate,
                                          size: 26,
                                          color: Colors.black,
                                        )),
                                        Text('4.5 Rating'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Product Description:\n"
                                "Indulge in the bold, fiery flavor of \nNoodles Hot Single, the perfect meal for spice lovers on the go. Crafted with premium ingredients, these noodles deliver a tantalizing mix of heat and savoriness that will awaken your taste buds in every bite. Whether you’re craving a quick lunch, a midnight snack, or a satisfying comfort food fix, Noodles Hot Single is your ideal companion. Easy to prepare and packed with flavor, it’s the ultimate single-serve delight for anyone who loves their noodles hot and delicious.",
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SFProDisplay',
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            //Other Store and Readmore Option
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Others Menus',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Visit Restaurants',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 43,
                                          height: 43,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Image.asset(
                                                'assets/wmfcagency_logo_b.jpg',
                                                width: 33,
                                                height: 33,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "WMFCAGENCY",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 23),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.bolt,
                                                    color: Colors.orange,
                                                    size: 19,
                                                  ),
                                                  Text(
                                                    'Delivery in 12 minutes',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              Text("19.29\$  starting",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFDE0A6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 43,
                                          height: 43,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Image.asset(
                                                'assets/wmfcagency_logo_b.jpg',
                                                width: 33,
                                                height: 33,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "WMFCAGENCY",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 23),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.bolt,
                                                    color: Colors.orange,
                                                    size: 19,
                                                  ),
                                                  Text(
                                                    'Delivery in 12 minutes',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              Text("19.29\$  starting",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 788),
            width: double.infinity,
            height: 80,
            color: Colors.white.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(21)),
                      color: Colors.orange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.add_circle,color: Colors.white,),
                        Text('1', style:TextStyle(fontSize: 22, fontFamily: 'SFProDisplay')),
                        Icon(Icons.remove_circle_outline_rounded ,color: Colors.white,),

                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("Add to Cart", style: TextStyle(color: Colors.black, fontSize: 17),),
                      icon: Icon(Icons.shopping_cart_outlined, color:Colors.black),
                      style: ElevatedButton.styleFrom(

                        backgroundColor:Color(0xFFFDE0A6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(21),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CurvedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start at the top-left corner
    path.moveTo(0, 0);

    // Move down to the point where the curve starts
    path.lineTo(
        0, size.height * 0.2); // Adjust this height to move the curve lower

    // Draw the top curve (opening mouth shape)
    double radius =
        size.height / 3; // Adjust the radius for the curve steepness
    path.arcToPoint(
      Offset(size.width, size.height * 0.2),
      // End the curve at the same height on the right
      radius: Radius.circular(radius),
      clockwise: true, // Curve direction
    );

    // Draw the right edge straight down
    path.lineTo(size.width, size.height);

    // Draw the bottom edge straight to the left
    path.lineTo(0, size.height);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
