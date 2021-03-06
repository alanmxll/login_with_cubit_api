import 'package:mysql1/mysql1.dart';

import '../../domain/entities/user.dart';

class LoginModel extends User {
  LoginModel.mapper(Map<int, dynamic> data)
      : super(
          id: data[0] as int,
          login: data[1] as String,
          password: (data[2] as Blob).toString(),
        );
}
