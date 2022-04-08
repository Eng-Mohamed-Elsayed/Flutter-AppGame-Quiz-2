import 'package:flutter/material.dart';

import 'customHelpingIcons.dart';

Row helpingIconsRow({
  required bool isSwitchUsedValue,
  required bool is5050UsedValue,
  required Function() withdrawFunction,
  required Function() functionOF5050,
  required Function() switchFunction,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      customHelpingIcons(
        onPressed: withdrawFunction,
        iconName: 'withdraw',
      ),
      customHelpingIcons(
        onPressed: functionOF5050,
        iconName: is5050UsedValue == false ? '5050' : '5050Used',
      ),
      customHelpingIcons(
        onPressed: switchFunction,
        iconName: isSwitchUsedValue == false ? 'Switch' : 'SwitchUsed',
      ),
    ],
  );
}
