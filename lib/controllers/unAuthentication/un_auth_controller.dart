import 'package:fl_app/providers/un_auth_provider.dart';
import 'package:fl_app/shared/widgets/show_snack_bar.dart';
import 'package:get/get.dart';

// The first is using Rx{Type}.
//     var count = RxString();
    
// The second is to use Rx and type it with Rx<Type>
//     var count = Rx<String>();
    
// The third, more practical and easier approach, is just to add an .obs to your variable.
//     var count = 0.obs;

class UnAuthenController extends GetxController{
  // var count = RxInt(0);
  var count = Rx<int>(0);
  // var count = 0.obs;
  int counter = 0;
  dynamic dataUser;
  final UnAuthenProvider _authenProvider;
  UnAuthenController(this._authenProvider);
  bool isShowPassword = true;

  void increment() {
    count.value ++;
    counter ++;
    update();
  }

  void showPassword(bool status) {
    // Todo something
    isShowPassword = status;
    update();
  }

  void verifyCode(String code) {
    // Todo something
  }

  void login({required String userName, required String password}) {
    // Todo something
    // After login success, then save data user. Could create state save data or write AuthenController.
    _authenProvider.login(userName: userName, password: password).then((value) {
      if (value != null) {
        printInfo(info: "login success $value");
        ShowSnackBar.snackBar(title: "Success", message: "Login success");
      } else {
        printError(info: "login error $value");
      }
    });
  }

  void logout() {
    // Todo something
  }

  void forgotUserName() {
    // Todo something
  }

  void forgotPassword() {
    // Todo something
  }
}