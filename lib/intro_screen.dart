import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wingo/home_screen.dart';

import 'Screens/competition_page.dart';
import 'Screens/registration_page.dart';
import 'constants/constant.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              title: "Lights, Camera, Action",
              body:
                  "Swipe, Create, And Vibe with Endless Short Videos! Let's Get Started",
              image: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/1.png'),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              decoration: const PageDecoration(
                  imageFlex: 2,
                  bodyFlex: 1,
                  bodyAlignment: Alignment.center,
                  titleTextStyle: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25))),
          PageViewModel(
              title: "Go Viral, Stay Social",
              body:
                  "Like, Comment, And Share Reels with Your Squad in Just One Tap",
              image: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/2.png'),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              decoration: const PageDecoration(
                  imageFlex: 2,
                  bodyFlex: 1,
                  bodyAlignment: Alignment.center,
                  titleTextStyle: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25))),
          PageViewModel(
              title: "Join The Reel Fun",
              //body: "Sign Up And Start Your Journey To Endless Entertainment",
              bodyWidget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Sign Up And Start Your Journey To Endless Entertainment",
                        textAlign: TextAlign.center,
                      ),
                      FilledButton(
                          style: kFilledButton,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return CompetitionPage();
                              },
                            ));
                          },
                          child: const Text('About the Competition')),
                      FilledButton(
                          style: kBorderedButton,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return RegistrationPage();
                              },
                            ));
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ]),
              ),
              image: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/3.png'),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              decoration: const PageDecoration(
                  imageFlex: 2,
                  bodyFlex: 1,
                  bodyAlignment: Alignment.center,
                  titleTextStyle: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25))),
          // You can add more PageViewModel here
        ],
        onDone: () {
          // When done button is pressed
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ));
        },
        showSkipButton: true,
        showDoneButton: false,
        skip: const Text("Skip"),
        next: const Icon(
          Icons.arrow_forward,
          fill: 0.5,
        ),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
