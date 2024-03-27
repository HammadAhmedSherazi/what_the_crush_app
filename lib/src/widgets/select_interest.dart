import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/view_model/interests_options.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class SelectInterestOptions extends StatefulWidget {
  const SelectInterestOptions({super.key});

  @override
  State<SelectInterestOptions> createState() => _SelectInterestOptionsState();
}

class _SelectInterestOptionsState extends State<SelectInterestOptions> {
  List<bool> tappedStates = List.generate(interests.length, (_) => false);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        // padding:
        //     const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          mainAxisExtent: 50,
        ),
        itemCount: interests.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                tappedStates[index] = !tappedStates[index];
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: tappedStates[index]
                      ? AppColors.purpleP500.withOpacity(0.1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.border)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(interests[index].image,
                      color: tappedStates[index]
                          ? AppColors.purpleP500.withOpacity(0.8)
                          : AppColors.purpleP500),
                  Text(
                    interests[index].name,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: tappedStates[index]
                              ? FontWeight.bold
                              : FontWeight.w200,
                          color: tappedStates[index]
                              ? AppColors.purpleP500.withOpacity(0.8)
                              : AppColors.textPrimary,
                        ),
                  )
                ],
              ),
            ),
          );

          // final state = ref.watch(userRegistrationProvider);
          // final controller = ref.read(userRegistrationProvider.notifier);
          // final selectedInterests = state.interests;
        });
  }
}
