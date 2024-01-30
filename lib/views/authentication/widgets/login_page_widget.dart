import 'package:fl_app/shared/widgets/button_widget.dart';
import 'package:fl_app/shared/widgets/text_field_widget.dart';
import 'package:fl_app/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  State<LoginPageWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            const TextFieldWidget(
              hint: "User Name",
              hintStyles: TextStyle(color: Colors.white70),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(
              hint: "Password",
              hintStyles: TextStyle(color: Colors.white70),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidgetCommon(
              title: "Login",
              height: 42,
              buttonColor: AppColor.green,
              onTap: () async {},
            )
          ],
        ),
      ),
    );
  }
}
