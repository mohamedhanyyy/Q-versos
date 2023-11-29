import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/shared/widgets/back_button.dart';

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )
        ),
        onPressed: (){},
        icon: const Icon(Icons.add),
        label: const Text('أضف طالب'),
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
}
