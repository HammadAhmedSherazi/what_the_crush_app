import 'package:flutter/material.dart';
import 'package:what_the_crush_app/src/features/SplashScreen/view/SplashScreen.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/LandingScreen/view/Landing.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/onboarding.dart/view/onboardingScreen.dart';

class AppRouter {
  MaterialPageRoute<Widget> materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }

  Map<String, Widget> routes = {
    '/':  SplashScreen(),
    '/OnboardingScreen':OnboardingScreen(),
    '/LandingScreen':LandingScreen(),
    
    
    // '/Onboarding': const OnboardingHomeScreen(),
    // '/EligibilityScreen': const EligibilityScreen(),
    // '/ValidAge': const ValidAgeScreen(),
    // '/InvalidAge': const InvalidAgeScreen(),
    // '/CrushDetailForm': const CrushDetailFormScreen(),
    // '/VerifyPhoneNumber': VerifyPhoneNumberScreen(),
    // '/VerifyOTP': const VerifyOTPScreen(),
    // '/SignUp': SignUpScreen(),
    // '/SuccessfulRegistration': const SuccessfulRegistration(),
    // '/CompleteProfile': CompleteProfileScreen(),
    // '/SelectGenderIdentity': const GenderIdentityScreen(),
    // '/SelectSexualOrientation': const SexualOrientationScreen(),
    // '/SelectRacialIdentity': const RacialIdentityScreen(),
    // '/SelectRelationshipStatus': const RelationshipStatusScreen(),
    // '/SelectInterests': const InterestScreen(),
    // '/EnableNotification': const EnableNotificationScreen(),
    // '/Welcome': const WelcomeScreen(),
    // '/SetupPrivacy': const SetupPrivacy(),
    // '/SignIn': const SignInScreen(),
    // '/ForgotPassword': const ForgotPasswordScreen(),
    // '/Home': HomeScreen(),
  };
  MaterialPageRoute<Widget> generatedRoutes(RouteSettings settings) {
    final requestedRoute = routes[settings.name];
    if (requestedRoute != null) {
      return materialRoute(requestedRoute);
    } else {
      return materialRoute(const SplashScreen());
    }
  }

  void pushNamed(BuildContext context, String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}
