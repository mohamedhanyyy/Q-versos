import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/teacher/account/screens/account_screen.dart';
import 'package:untitled/features/teacher/home/teacher_home_screen.dart';

import '../../../../shared/resources/colors.dart';

class TeacherNavBarScreen extends StatefulWidget {
  const TeacherNavBarScreen({super.key});

  @override
  State<TeacherNavBarScreen> createState() => _TeacherNavBarScreenState();
}

class _TeacherNavBarScreenState extends State<TeacherNavBarScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const TeacherHomeScreen(),
    const TeacherHomeScreen(),
    const Scaffold(),
    const TeacherAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(22), topLeft: Radius.circular(22)),
          border: Border.all(color: Colors.black12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomLineIndicatorBottomNavbar(
            selectedColor: AppColors.primaryColor,
            unselectedFontSize: 10,
            selectedFontSize: 12,
            selectedIconSize: 27,
            unselectedIconSize: 22,
            unSelectedColor: const Color(0xffB8B8D2),
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            lineIndicatorWidth: 1,
            indicatorType: IndicatorType.Top,
            customBottomBarItems: [
              CustomBottomBarItems(
                label: 'Home'.tr(),
                icon: Icons.home,
              ),
              // CustomBottomBarItems(
              //   label: 'Achievements',
              //   icon: Icons.library_add_check_sharp,
              // ),
              CustomBottomBarItems(label: 'Search'.tr(), icon: Icons.book),
              CustomBottomBarItems(
                label: 'الماليات',
                icon: Icons.monetization_on_outlined,
              ),
              CustomBottomBarItems(
                label: 'Account'.tr(),
                icon: Icons.person,
              ),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
