import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_bloc_task/generated/assets/assets.gen.dart';

class IconName {
  IconName._();

  static Widget get homeTopLeft => SvgPicture.asset(
        IconAssets.images.home.homeTopLeft,
        fit: BoxFit.scaleDown,
      );

  static Widget get homeBottomRight => SvgPicture.asset(
        IconAssets.images.home.homeBottomRight,
        fit: BoxFit.scaleDown,
      );

  static Widget blueCircle({double? size}) => SvgPicture.asset(
        IconAssets.images.common.blueCircle,
        width: size,
        height: size,
        fit: BoxFit.scaleDown,
      );

  static Widget get homeRedCircle => SvgPicture.asset(
        IconAssets.images.home.homeRedCircle,
        fit: BoxFit.scaleDown,
      );

  static Widget icRightArrow({Color? color}) => SvgPicture.asset(
        IconAssets.icons.icRightArrow,
        fit: BoxFit.scaleDown,
        colorFilter: color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
      );

  static Widget get detailTopLeft => SvgPicture.asset(
        IconAssets.images.detail.detailTopLeft,
        fit: BoxFit.scaleDown,
      );

  static Widget get detailCenterRight => SvgPicture.asset(
        IconAssets.images.detail.detailCenterRight,
        fit: BoxFit.scaleDown,
      );

  static Widget get detailBottomRight => SvgPicture.asset(
        IconAssets.images.detail.detailBottomRight,
        fit: BoxFit.scaleDown,
      );

  static Widget get detailTopLine => SvgPicture.asset(
        IconAssets.images.detail.detailTopLine,
        fit: BoxFit.scaleDown,
      );
}
