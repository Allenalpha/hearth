import 'package:flutter/material.dart';
import 'package:hearth/ui/onboarding/login.dart';
import 'package:hearth/ui/onboarding/signin.dart';
import 'package:hearth/utils/custom_themes.dart/constants.dart';
import 'package:hearth/utils/text_style.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          buildOnboardingPage(
            image: 'assets/images/onboard_one.png',
            title: '  GOOD\nCHOICE',
            subtitle: 'FOR YOUR ACCOMMODATION',
          ),
          buildOnboardingPage(
            image: 'assets/images/onboard_two.png',
            title: '     BEST\nHOUSING',
            subtitle: 'SOLUTION',
          ),
          buildLastOnboardingPage(
            image: 'assets/images/onboard_three.png',
            title: ' COMFORT',
            subtitle: 'AT IT PEAK',
            onGetStarted: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => SignInScreen(),)
              );
              print('Create Account');
            },
            onSkip: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => LogInScreen(),)
              );
              print('Login');
            },
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 20,
          right: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Body12Text,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: Body11Text,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildLastOnboardingPage({
    required String image,
    required String title,
    required String subtitle,
    required VoidCallback onGetStarted,
    required VoidCallback onSkip,
  }) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 20,
          right: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Body12Text ,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: Body11Text,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onGetStarted,
                  child: Text(
                    'Create Account',style: ButtonText,),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white
                  ),
                  onPressed: onSkip,
                  child: Text( 'Login', style: Button2Text,),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
