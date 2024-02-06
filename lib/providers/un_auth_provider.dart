import 'package:fl_app/repositories/un_auth_repository.dart';

class UnAuthenProvider {
  final UnAuthenRepository _authenRepository;
  UnAuthenProvider(this._authenRepository);

  Future<dynamic> login({required String userName, required String password}) async {
    var data = await _authenRepository.login(userName, password);
    return data;
  }
}