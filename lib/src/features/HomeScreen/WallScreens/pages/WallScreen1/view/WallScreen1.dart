import 'package:flutter/material.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/WallAppHeader.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/bottomNavBar.dart';

class CommonScaffold extends StatelessWidget {
  final Widget body;

  CommonScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            WallAppHeader(),
            SizedBox(height: 20.0),
            Expanded(child: body),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class WallScreen1 extends StatefulWidget {
  @override
  _WallScreen1State createState() => _WallScreen1State();
}

class _WallScreen1State extends State<WallScreen1> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Container(
        
        // Example:
        child: Center(
          child: Text('WallScreen1 Content'),
        ),
      ),
    );
  }
}
