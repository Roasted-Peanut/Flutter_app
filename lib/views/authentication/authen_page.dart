import 'package:fl_app/theme/colors.dart';
import 'package:fl_app/theme/images.dart';
import 'package:fl_app/views/authentication/widgets/login_page_widget.dart';
import 'package:fl_app/views/authentication/widgets/sign_up_page_widget.dart';
import 'package:flutter/material.dart';

class AuthenPage extends StatefulWidget {
  const AuthenPage({super.key});

  @override
  State<AuthenPage> createState() => _AuthenPageState();
}

class _AuthenPageState extends State<AuthenPage> {
  bool isViewLogin = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageBackgroundLogin), fit: BoxFit.cover)),
      padding: EdgeInsets.only(
          left: 24, right: 24, top: MediaQuery.of(context).padding.top),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: AppColor.pink09),
                      child: Text(
                        isViewLogin ? "Login" : "Sign Up",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: AppColor.pink05),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isViewLogin = !isViewLogin;
                            });
                          },
                          child: Text(
                            !isViewLogin ? "Login" : "Sign Up",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.white07),
                          )),
                    ),
                  )
                ],
              ),
            ),
            isViewLogin ? const LoginPageWidget() : const SignUpPageWidget()
          ],
        ),
      ),
    );
  }
}
