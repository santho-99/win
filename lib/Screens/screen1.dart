import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Text(
            """ 🎬 Winggoo Reel Competition – Show Your Creativity & Win!\nLove making reels? This is your chance! Create a fun, engaging video featuring Winggoo in your daily life and win exciting prizes! 🍿
🎥 Pick a Theme & Get Creative! \nChoose from themes like: \n📌 A Day with Winggoo – Savings & Surprises \n📌 Best Deal I Found on Winggoo\n📌 Winggoo Challenge – How Much Can I Save?\n📌 Winggoo vs. Full Price – Which Wins?\n📌 Hidden Gems & Discounts on Winggoo\n📌 How Winggoo Helps Small Businesses & Shoppers\n📌 The Ultimate Winggoo Shopping or Dining Experience
\nShow off your creativity and let Winggoo be your inspiration! 🚀""",
            style: TextStyle(fontSize: 13.5),
          ),
        ],
      ),
    );
  }
}
