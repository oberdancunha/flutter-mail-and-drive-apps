import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/login/login_store.dart';
import '../../domain/login/i_login_repository.dart';
import '../../external/argon2_configuration/argon2_configuration_env_data_source.dart';
import '../../external/encrypt/argon2_encrypt.dart';
import '../../external/login/login_random_data_source.dart';
import '../../infrastructure/argon2_configuration/argon2_configuration_data_source.dart';
import '../../infrastructure/encrypt/encrypt.dart';
import '../../infrastructure/login/login_data_source.dart';
import '../../infrastructure/login/login_repository.dart';
import 'login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton<Argon2ConfigurationDataSource>(
          (i) => Argon2ConfigurationEnvDataSource(),
        ),
        Bind.lazySingleton<Encrypt>((i) => Argon2Encrypt(argon2ConfigurationDataSource: i())),
        Bind.lazySingleton<LoginDataSource>((i) => LoginRandomDataSource(jwt: i())),
        Bind.lazySingleton<ILoginRepository>(
          (i) => LoginRepository(loginDataSource: i()),
        ),
        Bind.lazySingleton(
          (i) => LoginStore(
            encrypt: i(),
            loginRepository: i(),
          ),
        ),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:pageroute',
      child: (_, args) => LoginPage(
        afterLoginPageRoute: '/${args.params['pageroute'].toString()}/',
      ),
    ),
  ];
}
