import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/teacher/groups/screens/group_students_screen.dart';

import '../../../../services/navigation/navigation.dart';
import '../../../../shared/resources/colors.dart';

class TeacherGroupScreen extends StatefulWidget {
  const TeacherGroupScreen({super.key});

  @override
  State<TeacherGroupScreen> createState() => _TeacherGroupScreenState();
}

class _TeacherGroupScreenState extends State<TeacherGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 95,
        toolbarHeight: 65,
        title: const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text('المجموعات',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            AppNavigation.back();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
            width: 42,
            height: 42,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: const Offset(0, 2)),
                  BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: const Offset(-2, 0)),
                  BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: const Offset(2, 0)),
                ],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black12)),
            child: const Icon(Icons.arrow_back_ios_sharp, color: Colors.black),
          ),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade100,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: const Offset(0, 2)),
                    BoxShadow(
                        color: Colors.grey.shade50,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: const Offset(-2, 0)),
                    BoxShadow(
                        color: Colors.grey.shade100,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: const Offset(2, 0)),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle,
                    color: AppColors.orangeColor,
                  ))),
        ],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 14),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              AppNavigation.navigate(const TeacherGroupStudentsScreen());
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Group A'.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Text(
                        '3 ${'Students enrolled'.tr()}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff78746D),
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xffBEBAB3),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
