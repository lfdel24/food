import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool autofocus;
  final TextEditingController? textController;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const CustomTextField(
      {Key? key,
      this.textController,
      required this.labelText,
      this.autofocus = false,
      this.padding,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      margin: this.margin,
      child: TextField(
          autofocus: this.autofocus,
          controller: this.textController,
          decoration: InputDecoration(labelText: labelText)),
    );
  }
}

class CustomBody extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  const CustomBody(
      {Key? key,
      required this.children,
      this.crossAxisAlignment = CrossAxisAlignment.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: this.crossAxisAlignment,
            children: this.children),
      ),
    );
  }
}

class PrimaryTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const PrimaryTextButton({Key? key, this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            primary: Colors.white, backgroundColor: Colors.red),
        child: Text(text),
      ),
    );
  }
}

class SecondaryTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const SecondaryTextButton({Key? key, this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            primary: Colors.red, backgroundColor: Colors.white),
        child: Text(text),
      ),
    );
  }
}

AppBar customAppBar(BuildContext context, String title,
    {List<Widget>? actions}) {
  return AppBar(
    // toolbarHeight: 80,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        SizedBox(height: 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Icon(Icons.location_on_rounded, size: 14),
              SizedBox(width: 4),
              InkWell(
                onDoubleTap: () => Get.defaultDialog(
                    title: "LEONARDO DE LA CRUZ",
                    content: Text(
                      "Cra. 6 #29 Norte-648 a 29 Norte-1034,, Salento, Quindío",
                    )),
                child: Text(
                  "Cra. 6 #29 Norte-648 a 29 Norte-1034,, Salento, Quindío",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    actions: actions,
  );
}
