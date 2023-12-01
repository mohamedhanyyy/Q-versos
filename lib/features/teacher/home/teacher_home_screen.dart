import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:untitled/features/teacher/add_appointment/screens/add_appointment_screen.dart';
import 'package:untitled/features/teacher/groups/screens/teacher_group_screen.dart';

import '../../../../shared/resources/colors.dart';
import '../../../services/navigation/navigation.dart';
import '../../../shared/widgets/custom_button.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  int? selectedWeekIndex;
  int? selectedGroupOrIndividual = 0;
  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();


  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _zoomDrawerController,
      borderRadius: 50,
      openCurve: Curves.fastOutSlowIn,
      menuScreen: buildMenuScreen(),

      duration: const Duration(milliseconds: 500),
      mainScreen: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 45, bottom: 28),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/man.png',
                      width: 60,
                      height: 60,
                    ),
                    Text(
                      'Mohamed Hany',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 3),
                        child: Text(
                          'متاح لجلسة مجانية',
                          style: TextStyle(
                            color: AppColors.orangeColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width:15),
                    InkWell(
                        onTap: () {
                          _zoomDrawerController.toggle!();
                        },
                        child: SvgPicture.asset(
                            'assets/icons/homefilter.svg')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Calendar'.tr(),
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Today, 20th May',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffE4E4E4),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 17),
                child: StatefulBuilder(builder: (context, setState) {
                  return SizedBox(
                    height: 70.h,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            selectedWeekIndex = index;
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 14.h),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            width: 46.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: selectedWeekIndex != index
                                  ? AppColors.primaryColor
                                  : Colors.white,
                              border:
                                  Border.all(color: Colors.black12, width: 0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Text('S',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Inter',
                                      color: selectedWeekIndex == index
                                          ? AppColors.primaryColor
                                          : Colors.white,
                                    )),
                                Text(
                                  '${index + 10}',
                                  style: TextStyle(
                                    color: selectedWeekIndex == index
                                        ? AppColors.primaryColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Inter',
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                    ),
                  );
                }),
              ),
              Container(
                width: double.infinity,
                height: 700.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 45),
                      child: Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              child: CustomElevatedButton(
                                onTap: () {
                                  selectedGroupOrIndividual = 0;
                                  setState(() {});
                                },
                                buttonText: 'Sessions',
                                borderRadius: 8,
                                color: selectedGroupOrIndividual == 0
                                    ? AppColors.primaryColor
                                    : const Color(0xffF5F7FF),
                                fontColor: selectedGroupOrIndividual == 1
                                    ? AppColors.primaryColor
                                    : Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          Flexible(
                            child: SizedBox(
                              child: CustomElevatedButton(
                                onTap: () {
                                  selectedGroupOrIndividual = 1;
                                  setState(() {});
                                },
                                buttonText: 'Requests',
                                borderRadius: 8,
                                color: selectedGroupOrIndividual == 1
                                    ? AppColors.primaryColor
                                    : const Color(0xffF5F7FF),
                                fontColor: selectedGroupOrIndividual == 0
                                    ? AppColors.primaryColor
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (selectedGroupOrIndividual == 0) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your sessions'.tr(),
                              style: const TextStyle(
                                color: Color(0xff43463F),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(138.w, 32.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                backgroundColor: AppColors.orangeColor,
                                elevation: 0,
                              ),
                              onPressed: () {
                                showModalBottomSheet(

                                  isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: SizedBox(
                                            height: 500.h,

                                            child: const AddAppointmentScreen()),
                                      );
                                    },
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      )),
                                );
                                // AppNavigation.navigate(AddAppointmentScreen());
                              },
                              icon:
                                  SvgPicture.asset('assets/icons/addButton.svg'),
                              label: Text(
                                'Add a new one'.tr(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/icons/filter.svg'),
                            Text(
                              'Free sessions'.tr(),
                              style: const TextStyle(
                                color: Color(0xff43463F),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return buildTeacherSessionWidget();
                          },
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 4,
                        ),
                      )
                    ] else ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Your requests'.tr(),
                            style: const TextStyle(
                              color: Color(0xff43463F),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return buildTeacherRequestWidget();
                          },
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 4,
                        ),
                      )
                    ],
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget buildMenuScreen() {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.asset(
            'assets/images/group.png',
            height: ScreenUtil().screenHeight,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.h, left: 15),
                  height: 186.w,
                  width: 186.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 4),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Image.asset('assets/images/logo2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      AppNavigation.navigate(const TeacherGroupScreen());
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/persondrawer.svg'),
                        const SizedBox(width: 18),
                        const Text(
                          "مجموعاتي" ,
                          style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/consult.svg'),
                      const SizedBox(width: 18),
                      Text(
                        "Contact Us".tr(),
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/persondrawer.svg'),
                      const SizedBox(width: 18),
                      const Text(
                        "اعرف عنا",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/privacy.svg'),
                      const SizedBox(width: 18),
                      Text(
                        "Privacy Policy".tr(),
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/privacy.svg'),
                      const SizedBox(width: 18),
                      Text(
                        "Terms & Conditions".tr(),
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: AppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/power.svg'),
                  const SizedBox(width: 9),
                  Text(
                    'Log out'.tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTeacherSessionWidget() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffCDCDCD)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: 90.w,
                width: 90.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/man.png'),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mohamed Hany',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                  const Text(
                    'سوف يبدأ الدرس بعد 4 دقائق',
                    style: TextStyle(fontSize: 9),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(140.w, 30),
                          elevation: 0,
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          'Start now'.tr(),
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 50.w),
                      InkWell(
                        child: Text(
                          'Edit'.tr(),
                          style: const TextStyle(
                            color: Color(0xff989EA7),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: const Color(0xffFFF5EE),
                child: Text(
                  '   ${'Individually'.tr()}   ',
                  style: const TextStyle(
                      fontSize: 10,
                      color: AppColors.orangeColor,
                      fontWeight: FontWeight.w400),
                ),
              ))
        ],
      ),
    );
  }

  Widget buildTeacherRequestWidget() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffCDCDCD)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/man.png'),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mohamed Hany',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                  const Text(
                    'سوف يبدأ الدرس بعد 4 دقائق',
                    style: TextStyle(fontSize: 9),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(160.w, 17.h),
                          elevation: 0,
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          'Confirm'.tr(),
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 30.w),
                      InkWell(
                        child: Text(
                          'Reject'.tr(),
                          style: const TextStyle(
                            color: Color(0xff989EA7),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: const Color(0xffFFF5EE),
                child: Text(
                  '   ${'Schedule'.tr()}   ',
                  style: const TextStyle(
                      fontSize: 10,
                      color: AppColors.orangeColor,
                      fontWeight: FontWeight.w400),
                ),
              ))
        ],
      ),
    );
  }
}
