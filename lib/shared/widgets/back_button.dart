import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled/services/navigation/navigation.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({super.key, required String this.title});

  final String? title;

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 95,
      toolbarHeight: 65,
      title: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text('${widget.title}'.tr(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400)),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          AppNavigation.back();
        },
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10,right: 20),
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
    );
  }
}
