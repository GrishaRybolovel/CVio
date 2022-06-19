import 'package:flutter/material.dart';
import 'package:cv_io/utils/user_preferences.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String text;
  final ValueChanged<String> onChanged;


  const TextFieldWidget ({
    Key? key,
    required this.label,
    required this.text,
    required this.onChanged
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Padding(padding: EdgeInsets.only(top: 8)),
        TextField(controller: controller,)
      ],
    );
  }
}
