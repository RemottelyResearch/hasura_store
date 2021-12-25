import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../app/modules/update_produto/update_produto_controller.dart';
import '../../../app/modules/update_produto/update_produto_page.dart';
import '../../app_module.dart';
import 'repositories/update_produto_repository.dart';

class UpdateProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
            (i) => UpdateProdutoController(
                i.get<UpdateProdutoRepository>(), i.params["id"]),
            singleton: false),
        Bind((i) => UpdateProdutoRepository(AppModule.to.get<HasuraConnect>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/:id',
          child: (_, args) => UpdateProdutoPage(
            id: args.params['id'],
          ),
        ),
      ];

  static Inject get to => Inject<UpdateProdutoModule>.of();
}
