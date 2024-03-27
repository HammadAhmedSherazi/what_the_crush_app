import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/AppButtons.dart/SkipButton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/closeButton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/custombackbutton.dart';

class OnboardingLayout extends StatelessWidget {
  const OnboardingLayout({
    required this.body,
    super.key,
    this.isTransparent,
    this.showAppBar,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.extendBodyBehindAppBar,
    this.bottomNavigationBar,
    this.skipAction,
    this.closeAction,
    this.columnCrossAxisAlignment = CrossAxisAlignment.center,
    this.columnMainAxisAlignment = MainAxisAlignment.start,
    this.hasSkipButton = false,
    this.hasBackButton = false,
    this.hasCloseButton = false,
  });

  final List<Widget> body;
  final bool? isTransparent;
  final bool? showAppBar;
  final bool hasSkipButton;
  final bool hasBackButton;
  final bool hasCloseButton;
  final void Function()? skipAction;
  final void Function()? closeAction;
  final AppBar? appBar;
  final bool? extendBodyBehindAppBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final CrossAxisAlignment columnCrossAxisAlignment;
  final MainAxisAlignment columnMainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: isTransparent != null && isTransparent!
            ? Colors.transparent
            : Colors.white,
        extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
        appBar: showAppBar != null && showAppBar!
            ? appBar ??
                AppBar(
                  backgroundColor: Colors.transparent,
                  toolbarHeight: 0.1.sh,
                )
            : null,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
        body: Container(
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
            padding: const EdgeInsets.only(
              bottom: 40,
              left: 20,
              right: 20,
            ),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 0.8.sh,
                minWidth: 1.sw - 40,
              ),
              child: Column(
                crossAxisAlignment: columnCrossAxisAlignment,
                mainAxisAlignment: columnMainAxisAlignment,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (hasBackButton || hasCloseButton || hasSkipButton) ...[
                    0.08.sh.verticalSpace,
                    Row(
                      children: [
                        if (hasBackButton) const CustomBackButton(),
                        if (hasCloseButton) ...[
                          const Spacer(),
                          CustomCloseButton(
                            onTap: closeAction ??
                                () {
                                  // print('close');
                                },
                          ),
                        ],
                        if (hasSkipButton) ...[
                          const Spacer(),
                          CustomSkipButton(onPressed: skipAction ?? () {}),
                        ],
                      ],
                    ),
                    20.verticalSpace,
                  ] else ...[
                    0.08.sh.verticalSpace,
                  ],
                  ...body,
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
