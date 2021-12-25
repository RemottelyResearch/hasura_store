import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../app/app_module.dart';
import '../../../app/modules/home/home_controller.dart';
import '../../../app/modules/home/home_page.dart';
import '../../../app/modules/home/repositories/home_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //Controllers

        Bind((i) => HomeController(i.get<HomeRepository>())),

        //Repositories

        Bind((i) => HomeRepository(AppModule.to.get<HasuraConnect>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
