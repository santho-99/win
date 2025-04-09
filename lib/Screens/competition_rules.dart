import 'package:flutter/material.dart';

class CompetitionRules extends StatelessWidget {
  const CompetitionRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Competition Rules',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          """
Join Winngoo's First-Ever Reel Competition! 🎥
Show off your creativity by making a fun reel featuring Winngoo UK & Winngoo Pages and win amazing prizes!
📌 Competition Details:
✅ Open worldwide (Ages 18+)
✅ Reel Duration: 40-60 seconds
✅ Family-friendly & original content (No copyrighted material)
✅ Entry Fee: \$15 (Non-refundable)
✅ Competition Dates: [Start Date] - [End Date]
✅ UK winners attend an offline event; International winners receive prizes by mail.
💡 Bonus: Refer friends and earn extra points!
🚀 Showcase your creativity & stand a chance to win
big!
👉🏻 By entering, you agree to Winngoo using your reel for promotions.
      """,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
