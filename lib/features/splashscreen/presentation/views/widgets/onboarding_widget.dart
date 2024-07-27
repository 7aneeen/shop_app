import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/features/homescreen/presentation/views/home_screen.dart';
import 'package:shop_app/features/splashscreen/data/models/content.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  int currentIndex = 0;
  //PageController _controller;

  @override
  void initState() {
    //_controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    //_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: contents.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(contents[index].image,
                        height: 250, width: 400),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      contents[index].text,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                return HomeScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 55),
                backgroundColor: Colors.black12),
            child: Text(
              "GET STARTED",
              style: TextStyle(fontSize: 17, color: Colors.white),
            )),
        SizedBox(
          height: 35,
        ),
      ],
    ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
    );
  }
}
