import 'package:flutter/cupertino.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/device/device_utli.dart';

class GSpacingStyles {
  GSpacingStyles._();

  static EdgeInsetsGeometry defaultPadding = const EdgeInsets.all(GSizes.defaultSpace);

  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: GDeviceUtils.getAppBarHeight(),
    left: GSizes.defaultSpace,
    right: GSizes.defaultSpace,
    bottom: GSizes.defaultSpace,
  );

  static EdgeInsetsGeometry paddingWithAppBarHeightAndDefault = EdgeInsets.only(
    top: GDeviceUtils.getAppBarHeight() + GSizes.defaultSpace,
    left: GSizes.defaultSpace,
    right: GSizes.defaultSpace,
    bottom: GSizes.defaultSpace,
  );

  static EdgeInsetsGeometry paddingInTextFields = const EdgeInsets.symmetric(vertical: GSizes.md);
}
