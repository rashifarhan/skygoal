import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skygoal/data/data.dart';

ValueNotifier<String> radioNotifier = ValueNotifier("");
 ValueNotifier<bool> showColleges=ValueNotifier(false);

class RadioWidget extends StatelessWidget {
  final int index;
  const RadioWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:bottomSheetIcons[index],
      title: Text(
        qualification[index],
        style:Theme.of(context).textTheme.labelMedium,
      ),
      trailing: ValueListenableBuilder(
        valueListenable: radioNotifier,
        builder: (context, value, child) => Radio(
          value: qualification[index],
          groupValue: value,
          onChanged: (value) {
            if (value != null) {
              radioNotifier.value = value;
            }
            showColleges.value=true;
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
