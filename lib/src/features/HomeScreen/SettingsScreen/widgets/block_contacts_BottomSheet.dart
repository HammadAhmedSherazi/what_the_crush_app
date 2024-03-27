import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/block_body.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/unblock_body.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class BlockContacts_sheet extends StatefulWidget {
  const BlockContacts_sheet({super.key});

  @override
  State<BlockContacts_sheet> createState() => _BlockContacts_sheetState();
}

class _BlockContacts_sheetState extends State<BlockContacts_sheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.70, // Set the initial size of the sheet
      minChildSize: 0.50, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(0.15.sw)),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                // Draggable handle bar
                SheetIndicator(),
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10.h),
                            // TabBar with TabController
                            TabBar(
                              dividerColor: Colors.transparent,
                              controller: _tabController,
                              indicatorWeight: 1.w,
                              indicatorColor: AppColors.purpleP500,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    color: AppColors.purpleP500,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22.sp,
                                  ),
                              unselectedLabelStyle: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    color: AppColors.textInactive,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22.sp,
                                  ),
                              tabs: [
                                Tab(text: 'unblock (2/2)'),
                                Tab(text: 'block (0/2878)'),
                              ],
                            ),
                            // TabBarView to display content for each tab
                            SizedBox(
                              height: 0.6.sh,
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  Expanded(child: unBlock_Body()),
                                  Expanded(child: Block_Body()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
