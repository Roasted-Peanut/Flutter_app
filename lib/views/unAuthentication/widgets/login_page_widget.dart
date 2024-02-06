import 'package:fl_app/controllers/unAuthentication/un_auth_controller.dart';
import 'package:fl_app/shared/widgets/button_widget.dart';
import 'package:fl_app/shared/widgets/show_snack_bar.dart';
import 'package:fl_app/shared/widgets/text_field_widget.dart';
import 'package:fl_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageWidget extends GetView<UnAuthenController> {
  const LoginPageWidget({super.key});
  // final LoginController _controllerA = Get.find();

  @override
  Widget build(BuildContext context) {
  TextEditingController userNameTextcontroller = TextEditingController();
  TextEditingController passwordTextcontroller = TextEditingController();

    return Expanded(
      child: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // TEST UPDATE STATE
          // Obx(() => Text(controller.count.value.toString())), // now re-render when onClick update state
          // Text(controller.count.value.toString()), // do not re-render when onClick update
          // Text(controller.counter.toString()),     // do not re-render when onClick update
          // Text(_controllerA.count.value.toString()), // do not re-render when onClick update
          // GetBuilder<LoginController>( // now re-render when onClick update state
          //   init: LoginController(), // INIT IT ONLY THE FIRST TIME
          //   builder: (controller) => Text(
          //     '${controller.counter}__${controller.count.value}',
          //   ),
          // ),
          TextFieldWidget(
            hint: "User Name",
            hintStyles: const TextStyle(color: Colors.white70),
            controller: userNameTextcontroller,
          ),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<UnAuthenController>( // now re-render when onClick update state
            init: controller, // INIT IT ONLY THE FIRST TIME
            builder: (controller) => TextFieldWidget(
            hint: "Password",
            hintStyles: const TextStyle(color: Colors.white70),
            controller: passwordTextcontroller,
            password: controller.isShowPassword,
            showPassword: (res) => controller.showPassword(res),
          ),),
          const SizedBox(
            height: 20,
          ),
          ButtonWidgetCommon(
            title: "Login",
            height: 42,
            buttonColor: AppColor.green,
            onTap: () async {
              if (userNameTextcontroller.text != "" && passwordTextcontroller.text != "") {
                controller.login(userName: userNameTextcontroller.text, password: passwordTextcontroller.text);
              } else {
                ShowSnackBar.snackBar(type: 'error', title: "Error", message: "Username or password not empty.");
              }
            },
          )
        ],
      )),
    );
  }
}
