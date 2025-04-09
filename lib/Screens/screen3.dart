import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Text("""Join Winngoo's First-Ever Reel Competition! &
Show off your creativity by making a fun reel featuring Winngoo UK & Winngoo Pages and win amazing prizes!
Competition Details:
Participants must create an original reel promoting Winngoo UK and Winngoo Pages.
• The competition is open to participants worldwide.
• The entry fee is [Enter Fee] and is non-refundable.
• The competition starts on [Enter Start Date] and ends on [Enter End Date].
• Reels must be between 40-60 seconds.
• Content must be family-friendly and appropriate for all ages.
• Offensive or inappropriate content will be disqualified.
• The reel must include a clear mention of Winngoo UK and Winngoo Pages.
• No copyrighted music or third-party content without permission.
• By entering, participants agree to give Winngoo permission to use their reel for promotional purposes.
• Only participants aged 18 or older can enter.
• Winners will be selected based on creativity, originality, and adherence to guidelines.
• Winngoo reserves the right to disqualify any participant for rule violations.
• Cheating or dishonesty results in immediate disqualification.
• UK winners will attend an offline event for award
presentation. International winners will receive prizes by mail.
• Referral program: Refer friends and earn extra points to increase chances of winning.
        """),
      ),
    );
  }
}
