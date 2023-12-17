import 'package:flutter/material.dart';

class AltMenuItem extends StatelessWidget {
  final Function()? onTap;
  
  final Icon icon;

  const AltMenuItem({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
          ],
        ),
      ),
    );
  }
}