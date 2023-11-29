import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../shared/resources/colors.dart';
import '../../shared/widgets/custom_snack_bar.dart';

void errorHandler(
    {required BuildContext context,
    Response? response,
    bool? showTopSnackBar}) {
  if (response?.statusCode == 400) {
    // ErrorModel errorModel = ErrorModel.fromJson(response?.data);

    CustomSnackBars.showErrorToast(title: 'badRequestError');
  } else if (response?.statusCode == 500) {
    CustomSnackBars.showErrorToast(title: 'serverError'.tr());
  } else if (response?.statusCode == 401) {
    // PreferencesHelper.preferences?.remove('token');
    // PreferencesHelper.preferences?.remove('keepMeLogged');
    AwesomeDialog(
            context: context,
            title: 'unAuthorizedError'.tr(),
            desc: 'un authorized description'.tr(),
            btnOkText: 'ok'.tr(),
            btnCancelText: 'cancel'.tr(),
            dialogType: DialogType.error,
            btnOkColor: AppColors.primaryColor,
            btnOkOnPress: () {
              // AppNavigation.navigateOffAll(context: context, page: LoginScreen());
            })
        .show();
  } else if (response?.statusCode == 404) {
    CustomSnackBars.showErrorToast(title: 'notFoundError');
  }
}
