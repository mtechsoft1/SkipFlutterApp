import 'package:flutter/material.dart';

class RadioListTileWithImage extends StatelessWidget {
  final String name;
  final String imagePath;
  final String? groupValue;
  final ValueChanged<String?>? onChanged;

  const RadioListTileWithImage({
    required this.name,
    required this.imagePath,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: name,
      groupValue: groupValue,
      onChanged: onChanged,
      title: Text(name),
      secondary: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
