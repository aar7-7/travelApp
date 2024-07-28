import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'Model/TravelModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Digikala',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'Digikala',
            color: Color.fromARGB(255, 16, 6, 6),
            fontSize: 30,
            fontWeight: FontWeight.w200,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Digikala',
            fontSize: 15,
            color: Color.fromARGB(255, 26, 1, 1),
            fontWeight: FontWeight.w400,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Digikala',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w100,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Digikala',
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Digikala',
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedIndex = 0;
  double _imageSize = 60;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
              width: size.width,
              height: size.height / 1.8,
              color: Colors.white,
              child: Stack(children: [
                Container(
                  width: size.width,
                  height: size.height / 2.1,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(70),
                          bottomLeft: Radius.circular(70)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(travelList[_selectedIndex].img),
                      )),
                ),

                //head icons
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(110, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(Icons.thumb_up_alt_outlined),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(110, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 100,
                  child: SizedBox(
                    width: 90,
                    height: double.maxFinite,
                    child: ListView.builder(
                      itemCount: travelList.length,
                      itemBuilder: (context, index) {
                        return imageItem(index);
                      },
                    ),
                  ),
                )
              ])),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 2.0)),
                        child: Column(
                          children: [
                            Text(
                              'Distance',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${travelList[_selectedIndex].distance}km',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 2.0)),
                        child: Column(
                          children: [
                            Text(
                              'Temp',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              travelList[_selectedIndex].temp,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 2.0)),
                        child: Column(
                          children: [
                            Text(
                              'rating',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              travelList[_selectedIndex].rating,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Description',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: ExpandableText(
                        travelList[_selectedIndex].description,
                        readMoreText: 'read more',
                        readLessText: 'read less',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Total Price',
                          style: TextStyle(
                              fontFamily: 'digikala',
                              color: Colors.grey,
                              fontSize: 19))),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('\$${travelList[_selectedIndex].price}',
                              style: const TextStyle(
                                fontSize: 30,
                                fontFamily: 'digikala',
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black),
                            child: const Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.grey,
                              size: 50,
                            ),
                          ),
                        )
                      ])
                ],
              ),
            ),
          )),
        ],
      ),
    ));
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              width: _selectedIndex == index ? _imageSize + 15 : _imageSize,
              height: _selectedIndex == index ? _imageSize + 15 : _imageSize,
              duration: const Duration(milliseconds: 500),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: _selectedIndex == index
                          ? Colors.yellow
                          : Colors.white,
                      width: 2),
                  image: DecorationImage(
                    image: AssetImage(travelList[index].img),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
