import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/SignupScreen/view/Signup.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/custombackbutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // late StopWatchTimer _countdownTimer;
  // bool canSend = false;
  final TextEditingController _otpController = TextEditingController();
  // @override
  // void initState() {
  //   _countdownTimer = StopWatchTimer(
  //     mode: StopWatchMode.countDown,
  //     presetMillisecond: 10000,
  //     onEnded: () {
  //       setState(() {
  //         canSend = true;
  //       });
  //     },
  //   );
  //   super.initState();
  //   _countdownTimer.onStartTimer();
  // }

  // @override
  // Future<void> dispose() async {
  //   await _countdownTimer
  //       .dispose(); // Dispose of the countdown timer to avoid memory leaks
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        constraints: BoxConstraints(
          minHeight: 1.sh,
          minWidth: 1.sw,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              10.verticalSpace,
              Row(
                children: [CustomBackButton()],
              ),
              Text(
                "00:42",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: const Color(0xff8A2387),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'type the verification code',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "you might've received via SMS",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              50.verticalSpace,
              PinCodeTextField(
                animationType: AnimationType.none,
                textStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColors.purpleP500,
                      fontWeight: FontWeight.w500,
                    ),
                hintStyle:
                    TextStyle(color: AppColors.purpleP500.withOpacity(0.3)),
                hintCharacter: '0',
                controller: _otpController,
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                // controller: _pinController,
                onChanged: (value) {
                  // Check if the OTP field is filled,
                  // then move to the next field
                  // if (value.length == widget.length) {
                  //   FocusScope.of(context).nextFocus();
                  // }
                },
                onCompleted: (value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                  // Check if the OTP is correct
                  // verifyOTP(
                  //   context,
                  //   ref,
                  //   _otpController,
                  //   '/SignUp',
                  // );
                  // Navigator.of(context).pushNamed('/SignUp');
                },
                pinTheme: PinTheme(
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  shape: PinCodeFieldShape.box,
                  borderWidth: 1,
                  fieldHeight: 50,
                  fieldWidth: 50,
                  inactiveColor: AppColors.border,
                  activeColor: AppColors.purpleP500,
                  selectedColor: AppColors.purpleP500.withOpacity(0.3),
                ),
              ),
              330.verticalSpace,
              GestureDetector(
                onTap: () {},
                //   if (canSend) {
                //     _countdownTimer
                //       ..onResetTimer()
                //       ..onStartTimer();
                //     setState(() {
                //       canSend = false;
                //     });
                //     sendOtp(context, ref).then((value) {
                //       showDefaultToast('Resent');
                //     });
                //   } else {
                //     showDefaultToast('Please wait');
                //   }
                // },
                child: Text(
                  'Send Again',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColors.textInactive,
                        // canSend ? AppColors.blue : AppColors.textInactive,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}
