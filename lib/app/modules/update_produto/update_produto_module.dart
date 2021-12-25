// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:hasura_connect/hasura_connect.dart';
// import 'package:hasura_store/app/modules/update_produto/repositories/update_produto_repository.dart';

// // import '../add_produto/add_produto_controller.dart';
// // import '../add_produto/add_produto_page.dart';
// import '../../app_module.dart';
// // import '../add_produto/repositories/add_produto_repository.dart';

// import '../../../app/modules/update_produto/update_produto_controller.dart';
// import '../../../app/modules/update_produto/update_produto_page.dart';

// class UpdateProdutoModule extends ChildModule {
//   @override
//   List<Bind> get binds => [
//         /// Controllers
//         Bind(
//             (i) => UpdateProdutoController(
//                 i.get<UpdateProdutoRepository>(), i.params["id"]),
//             singleton: false),

//         ///Repositories
//         Bind((i) => UpdateProdutoRepository(AppModule.to.get<HasuraConnect>())),
//       ];

//   @override
//   List<ModularRouter> get routers => [
//         // ModularRouter('/', child: (_, args) => UpdateProdutoPage()),
//         // ModularRouter('/update-produto/:id',
//         //     child: (_, args) => UpdateProdutoPage(
//         //           id: args.params['id'],
//         //         )),
//       ];

//   static Inject get to => Inject<UpdateProdutoModule>.of();
// }
