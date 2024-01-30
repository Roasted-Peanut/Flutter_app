import 'package:fl_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef OnChangeText = void Function(String);
typedef OnValidateText = String? Function(String?)?;

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      this.titleTextField,
      this.hint,
      this.onChange,
      this.keyBoard,
      this.password,
      this.autovalidate,
      this.onValidate,
      this.textFiledstyle,
      this.value,
      this.inputBorder,
      this.inputFormatters,
      this.textFieldDecoration,
      this.hintStyles})
      : super(key: key);
  final String? titleTextField;
  final String? hint;
  final OnChangeText? onChange;
  final OnValidateText? onValidate;
  final TextInputType? keyBoard;
  final bool? password;
  final bool? autovalidate;
  final TextStyle? textFiledstyle;
  final String? value;
  final InputBorder? inputBorder;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? textFieldDecoration;
  final TextStyle? hintStyles;

  @override
  Widget build(BuildContext context) {
    final textFieldStyle =
        const TextStyle(color: Colors.white).merge(textFiledstyle);
    final hintStyle = const TextStyle(
      color: Color(0xff969696),
      fontSize: 14,
    ).merge(hintStyles);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          maxLines: 1,
          initialValue: value,
          style: textFieldStyle,
          onChanged: onChange,
          keyboardType: keyBoard,
          obscureText: password == null ? false : password!,
          validator: onValidate,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.black05,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(
                color: Color(0xffCCCCCC),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Color(0xffCCCCCC)),
              borderRadius: BorderRadius.circular(32.0),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32)),
              borderSide: BorderSide(
                width: 1,
                color: Color(0xffD63A3A),
              ),
            ),
            hintStyle: hintStyle,
            hintText: hint,
          ),
        ),
      ],
    );
  }
}
