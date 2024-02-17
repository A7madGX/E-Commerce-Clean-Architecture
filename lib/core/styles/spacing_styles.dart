import 'package:flutter/cupertino.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/device/device_utli.dart';

class GSpacingStyles {
  GSpacingStyles._();

  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: GDeviceUtils.getAppBarHeight(),
    left: GSizes.defaultSpace,
    right: GSizes.defaultSpace,
    bottom: GSizes.defaultSpace,
  );
}
