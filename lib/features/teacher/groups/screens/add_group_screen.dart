import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/shared/widgets/back_button.dart';
import 'package:untitled/shared/widgets/custom_button.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

class AddGroupScreen extends StatefulWidget {
  const AddGroupScreen({super.key});

  @override
  State<AddGroupScreen> createState() => _AddGroupScreenState();
}

class _AddGroupScreenState extends State<AddGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(

          preferredSize: Size(double.infinity, 80.h),
        child: const CustomBackButton(
          title: 'مجموعة جديدة'
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomTextField(hintText: 'اسم المجموعة', controller: TextEditingController()),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                color: Colors.grey.shade500,
                )

              ),
              child: DropdownButton(
                padding: EdgeInsets.only(right: 14.w,left: 6.w),
                hint: Text('قم بتحديد مجال المجموعة',style: TextStyle(
                  color: Colors.grey.shade300
                ),),
                isExpanded: true,
                underline: const SizedBox.shrink(),
                onChanged: (val){

                },
                items: ['test', 'test','test'].map((e) =>DropdownMenuItem(child: Text(e),value: e,)).toList(),
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                  
                  
                      hintText: 'تاريخ البداية', controller: TextEditingController()),
                ),
                SizedBox(width: 15.w,),


                Flexible(child: CustomTextField(hintText: 'تاريخ النهاية', controller: TextEditingController())),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                children: [
                  Flexible(
                    child: CustomTextField(


                        hintText: 'أقل عمد', controller: TextEditingController()),
                  ),
                  SizedBox(width: 15.w,),
                  Flexible(child: CustomTextField(hintText: 'أقصي عمر', controller: TextEditingController())),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 13),
        child: CustomElevatedButton(
          onTap: (){},
           buttonText: "إضافة",
        ),
      ),
    );
  }
}
