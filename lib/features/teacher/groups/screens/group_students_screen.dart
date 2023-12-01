import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/shared/widgets/back_button.dart';

import '../../../../shared/resources/colors.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';

class TeacherGroupStudentsScreen extends StatefulWidget {
  const TeacherGroupStudentsScreen({super.key});

  @override
  State<TeacherGroupStudentsScreen> createState() =>
      _TeacherGroupStudentsScreenState();
}

class _TeacherGroupStudentsScreenState
    extends State<TeacherGroupStudentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(183,50),
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )
        ),
        onPressed: (){
          showAddFamilyBottomSheet    (context);
        },
        icon: const Icon(Icons.add,color: Colors.white,),
        label: const Text('أضف طالب',style: TextStyle(
          color: Colors.white
        ),),
      ),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: CustomBackButton(title: 'الطلاب'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric( vertical: 20),
          child: DataTable(
            columnSpacing: 180.w,
              dividerThickness: 2,
              border: TableBorder(
                borderRadius: BorderRadius.circular(5),
                horizontalInside: const BorderSide(color: Colors.black12)
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
              columns: const [
                DataColumn(
                  label: Text(
                    'النوع',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'الأسم',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              dataRowColor: MaterialStateProperty.all(Colors.white),
              rows: [
                DataRow(cells: [
                  const DataCell(Text('عائلة')),
                  // const DataCell(),
                  DataCell(Row(
                    children: [
                      const Text('mohamed'),
                      const SizedBox(width: 10),
                      SvgPicture.asset('assets/icons/message.svg'),
                    ],
                  )),
                ]),
                DataRow(cells: [
                  const DataCell(Text('عائلة')),
                  DataCell(Row(
                    children: [
                      const Text('mohamed'),
                      const SizedBox(width: 10),
                      SvgPicture.asset('assets/icons/message.svg'),
                    ],
                  )),
                ]),
                DataRow(cells: [
                  const DataCell(Text('عائلة')),
                  DataCell(Row(
                    children: [
                      const Text('mohamed'),
                      const SizedBox(width: 10),
                      SvgPicture.asset('assets/icons/message.svg'),
                    ],
                  )),
                ]),
              ]),
        ),
      ),
    );
  }
  void showAddFamilyBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        // isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(

              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 15),
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 16),
                    child: Text(
                      'إضافة طالب جديد',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CustomTextField(
                      hintText: 'اسم الطالب', controller: TextEditingController()),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: CustomTextField(
                      textInputType: TextInputType.phone,
                        hintText: 'رقم هاتف الطالب', controller: TextEditingController()),
                  ),
                  SizedBox(height: 10.h),
                  CustomElevatedButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttonText: 'إضافة',
                      fontSize: 16,
                      height: 50.h),
                ],
              ),
            ),
          );
        });
  }

}
