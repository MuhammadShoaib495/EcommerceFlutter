import 'package:ecommerce_shoaib/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F6F6),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(left: 52),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 110.0),
                        child: Image.asset(
                          'assets/wmfcagency_logo_b.jpg',
                          width: 80,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 270,
              margin: const EdgeInsets.only(top: 78, left: 133),
              child: Image.asset("assets/biryani_above.png"),
            ),
            Container(
              width: 240,
              margin: const EdgeInsets.only(top: 288, left: 1),
              child: Transform.rotate(angle:-76,child: Image.asset("assets/soup_above.png")),
            ),
            //Container for Navigation to next page//
            Container(
              width: 415,
              height: 220,
              margin: const EdgeInsets.only(
                top: 508,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(1222),
                    topRight: Radius.circular(1222)),
                color: Color(0xFF013032),
              ),
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.only(right: 15.0, top: 15.0, left: 15),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(

                      children: [
                        SizedBox(
                          height: 29,
                        ),
                        Text(
                          "Fuel Your Day with Fresh,\nHealthy Food",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                        softWrap: true,),
                        SizedBox(
                          height: 15
                        ),
                        Text(
                          "Discover Recipes, Veggies, and More!",
                          style: TextStyle(
                              color: Color(0xFFFDE0A6),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Container(
                  width: 404,
                  height: 49,
                  color: Color(0xFF013032),
                  margin: const EdgeInsets.only(
                    top: 732,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    label: const Text("Get Started",
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    iconAlignment: IconAlignment.end,
                    icon: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 17,
                      color: Colors.black,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.withOpacity(0.9),
                        side: const BorderSide(width: 1.0),
                        iconColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        )),
                  )),
            ),
          ],
        ));
  }
}
