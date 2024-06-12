import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/utils/app_color.dart';

customTextFieldSearch({
  required BuildContext context,
  required TextEditingController controller,
  void Function(String)? onChanged,
  required String hintText,
  void Function()? onTapSuffix,
  EdgeInsetsGeometry? padding,
  EdgeInsetsGeometry? contentPadding,
  bool? isBorder = false,
  Color? fillColor,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: Get.isDarkMode
          ? []
          : [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
    ),
    clipBehavior: Clip.antiAlias,
    child: TextFormField(
      onChanged: onChanged,
      controller: controller,
      style: TextStyle(
        color: Theme.of(context).hoverColor,
        fontSize: context.isPhone ? 14 : 16,
        fontFamily: 'EN-REGULAR',
      ),
      cursorColor: Theme.of(context).hintColor,
      cursorWidth: 0.8,
      maxLines: 1,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
        isCollapsed: true,
        contentPadding: contentPadding ??
            const EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
        hintStyle: TextStyle(
          color: Theme.of(context).hintColor,
          fontFamily: 'EN-REGULAR',
          fontSize: context.isPhone ? 14 : 16,
        ),
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? Theme.of(context).cardColor,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 5,
            top: 2,
            right: 5,
          ),
          child: Icon(
            Icons.search_rounded,
            size: 25,
            color: Theme.of(context).hintColor,
          ),
        ),
        focusedBorder: isBorder == false
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 0.8,
                  color: Get.isDarkMode
                      ? AppColor().white.withOpacity(0.2)
                      : const Color.fromARGB(255, 231, 229, 229),
                ),
              )
            : const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.zero,
              ),
        enabledBorder: isBorder == false
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 0.8,
                  color: Get.isDarkMode
                      ? AppColor().white.withOpacity(0.2)
                      : const Color.fromARGB(255, 231, 229, 229),
                ),
              )
            : const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.zero,
              ),
      ),
    ),
  );
}
