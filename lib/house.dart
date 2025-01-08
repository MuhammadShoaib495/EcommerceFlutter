import 'package:ecommerce_shoaib/vrhome.dart';
import 'package:flutter/material.dart';

class House extends StatelessWidget {
  const House({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 44,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(44),
                  ),
                ),
                child: Stack(children: [
                  Container(
                    width: 400,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(44),
                        ),
                        child: Image.asset(
                          'assets/house.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 44.0),
                    child: Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.green,
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 327.0, top: 44.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Vrhome(),));
                      },
                      child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera,
                                color: Colors.green,
                              ),
                              Text(
                                "360",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 484, left: 17),
                      child: Text(
                        'Primary Apartments',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 29,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 519, left: 27),
                      child: Text(
                        '6601 Ocean Avenue demo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w400),
                      )),
                ]),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.bed,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Column(
                          children: [
                            Text(
                              "Bed Rooms",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "2 Rooms",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.bathtub,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Column(
                          children: [
                            Text(
                              "Bath Rooms",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "3 Rooms",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.rectangle_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Column(
                          children: [
                            Text(
                              "Square",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "1,880 ft",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF181818),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "\$650,000",
                            style: TextStyle(fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'per Month',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                  width: 400,
                  padding: EdgeInsets.only(left: 13),
                  child: Text('Information',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.start)),
              SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF181818),
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Estimate Price',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '\$650,000',
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                          child: Text(
                            '-4.7%',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF082D53),
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Sale Activity',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '1 Sold',
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 64,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                          child: Text(
                            '+103.7%',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF082D53),
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Average Price',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '\$690,000',
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                          child: Text(
                            '+24.7%',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
