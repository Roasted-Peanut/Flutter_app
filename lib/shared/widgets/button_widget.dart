import 'package:fl_app/theme/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidgetCommon extends StatefulWidget {
  final double? width;
  final double height;
  final String title;
  final Icon? icon;
  final Widget? image;
  final TextStyle? textStyle;
  final Color buttonColor;
  final Future<void> Function() onTap;
  final double? sizebox;
  final EdgeInsets? margin;
  final EdgeInsets? pading;
  final BoxDecoration? decoration;

  const ButtonWidgetCommon(
      {super.key, this.width,
      required this.height,
      required this.title,
      this.icon,
      this.image,
      this.textStyle,
      this.sizebox,
      //required this.borderRadius,
      required this.buttonColor,
      required this.onTap,
      this.margin,
      this.pading,
      this.decoration});

  @override
  State<ButtonWidgetCommon> createState() => _ButtonWidgetCommonState();
}

class _ButtonWidgetCommonState extends State<ButtonWidgetCommon> {
  bool isProcessing = false;

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> handleTap() async {
    if (mounted) {
      setState(() {
        isProcessing = true;
      });
      await widget.onTap();
      await Future.delayed(const Duration(seconds: 1)).then((value) {
        if (!mounted) return;
        setState(() {
          isProcessing = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 20, color: AppColor.white, fontWeight: FontWeight.bold).merge(widget.textStyle);
    return Container(
      margin: widget.margin,
      decoration: widget.decoration,
      child: AbsorbPointer(
        absorbing: isProcessing,
        child: Material(
          color: widget.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: Ink(
            width: widget.width,
            height: widget.height,
            child: InkWell(
              borderRadius: BorderRadius.circular(32),
              onTap: handleTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (widget.image != null) widget.image!,
                  if (widget.icon != null) widget.icon!,
                  SizedBox(
                    width: widget.sizebox,
                  ),
                  Text(
                    widget.title,
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
