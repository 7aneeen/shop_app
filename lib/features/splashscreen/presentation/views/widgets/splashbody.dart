import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/features/splashscreen/presentation/views/onboarding_screen.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliding1;
  late Animation<Offset> sliding2;
  late Animation<Offset> sliding3;
  late Animation<Offset> sliding4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    sliding1 = Tween<Offset>(begin: Offset(-5, 0), end: Offset(0, 0))
        .animate(animationController);
    sliding2 = Tween<Offset>(begin: Offset(-2, 0), end: Offset(0, 0))
        .animate(animationController);
    sliding3 = Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0))
        .animate(animationController);
    sliding4 = Tween<Offset>(begin: Offset(5, 0), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    setState(() {});
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(Images.splashImage, width: 300, height: 300),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SlideTransition(
                position: sliding1,
                child: Text(
                  "S",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )),
            SlideTransition(
              position: sliding2,
              child: Text(
                "H",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SlideTransition(
              position: sliding3,
              child: Text(
                "O",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SlideTransition(
              position: sliding4,
              child: Text(
                "P",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
