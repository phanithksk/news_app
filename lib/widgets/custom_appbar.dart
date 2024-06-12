import 'dart:io';
import 'package:flutter/material.dart';
import 'package:project_structure/core/utils/app_color.dart';

customAppBar({
  required String title,
  final Color? backgroundColor,
  final Color? leadingColor,
  final Color? titleColor,
  final Widget? leading,
  List<Widget>? actions,
  required BuildContext context,
  final bool isLeading = true,
  void Function()? onTap,
}) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: backgroundColor ?? AppColor().primaryColor,
    title: Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'EN-BOLD',
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: titleColor ?? AppColor().white,
      ),
    ),
    automaticallyImplyLeading: false,
    leading: isLeading
        ? Platform.isAndroid
            ? GestureDetector(
                onTap: onTap ??
                    () {
                      Navigator.pop(context);
                    },
                child: Icon(
                  Icons.arrow_back,
                  color: leadingColor ?? Colors.white,
                ),
              )
            : GestureDetector(
                onTap: onTap ??
                    () {
                      Navigator.pop(context);
                    },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: leadingColor ?? Colors.white,
                ),
              )
        : leading,
    actions: actions,
  );
}
