import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/student/account/screens/account_screen.dart';
import 'package:untitled/features/student/donate_subscription/screens/my_family_screen.dart';
import 'package:untitled/features/student/home/screens/student_home_screen.dart';
import 'package:untitled/features/student/sessions/screens/student_sessions_screen.dart';
import 'package:untitled/features/student/subscribe/screens/subscribe_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';


class StudentNavBarScreen extends StatefulWidget {
  const StudentNavBarScreen({super.key});

  @override
  State<StudentNavBarScreen> createState() => _StudentNavBarScreenState();
}

class _StudentNavBarScreenState extends State<StudentNavBarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const StudentHomeScreen(),
    const StudentSessionsScreen(),
    const MyFamilyScreen(),
    const StudentAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppNavigation.navigate(const StudentSubscribeScreen());
        },
        elevation: 0,
        highlightElevation: 0,
        backgroundColor: const Color(0xffFFF9E6),
        child: CircleAvatar(
          radius: 50,
          // backgroundColor: AppColors.primaryColor,
          backgroundColor: Colors.grey.shade200,
          child: Text(
            ' اشترك الان ',
            style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      extendBody: true,

      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height:75.h,
        color: Colors.grey.shade50,
        shape: const CircularNotchedRectangle(),
        notchMargin: 2,
        child: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [const Icon(Icons.home), Text('Home'.tr())],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [const Icon(Icons.book), Text('Sessions'.tr())],
                ),
              ),
              SizedBox(width: 25.w),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.person_2),
                    Text('My family'.tr())
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [const Icon(Icons.person), Text('Account'.tr())],
                ),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}

// import '../../../../shared/resources/colors.dart';
//
// class StudentNavBarScreen extends StatefulWidget {
//   const StudentNavBarScreen({super.key});
//
//   @override
//   State<StudentNavBarScreen> createState() => _StudentNavBarScreenState();
// }
//
// class _StudentNavBarScreenState extends State<StudentNavBarScreen> {
//   int currentIndex = 0;
//
//   List<Widget> pages = [
//     const StudentHomeScreen(),
//     // StudentAchievementsScreen(),
//     const StudentSessionsScreen(),
//     // StudentMessagesScreen(),
//     const StudentAccountScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.only(bottom: 30),
//         child: SizedBox(
//           width: 150,
//           child: FloatingActionButton(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30)
//             ),
//             onPressed: (){
//               AppNavigation.navigate(const StudentSubscribeScreen());
//             },
//             elevation: 0,
//             backgroundColor: AppColors.primaryColor,
//             child: Text('subscribe now'.tr(),style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.only(
//               topRight: Radius.circular(22), topLeft: Radius.circular(22)),
//           border: Border.all(color: Colors.black12),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: CustomLineIndicatorBottomNavbar(
//             selectedColor: AppColors.primaryColor,
//             unselectedFontSize: 10,
//             selectedFontSize: 12,
//             selectedIconSize: 27,
//             unselectedIconSize: 22,
//             unSelectedColor: const Color(0xffB8B8D2),
//             currentIndex: currentIndex,
//             onTap: (index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             lineIndicatorWidth: 1,
//             indicatorType: IndicatorType.Top,
//             customBottomBarItems: [
//               CustomBottomBarItems(

//                 label: 'Home'.tr(),
//                 icon: Icons.home,
//               ),
//               // CustomBottomBarItems(
//               //   label: 'Achievements',
//               //   icon: Icons.library_add_check_sharp,
//               // ),
//               CustomBottomBarItems(label: 'Sessions'.tr(), icon: Icons.book),
//               // CustomBottomBarItems(
//               //   label: 'Message',
//               //   icon: Icons.message_rounded,
//               // ),
//               CustomBottomBarItems(
//                 label: 'Account'.tr(),
//                 icon: Icons.person,
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: pages[currentIndex],
//     );
//   }
// }
