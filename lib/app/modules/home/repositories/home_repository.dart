import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../../app/modules/home/models/produto_model.dart';

class HomeRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  HomeRepository(this._hasuraConnect);

  Future<Snapshot<List<UserModel>>> getProduto() async {
    var query = '''
             subscription getUsers {
  user {
    id,
    name,
    email
  }
}
    ''';

    var snapshot = await _hasuraConnect.subscription(query);

    return snapshot.map((data) {
      if (data == null) {
        return null;
      }
      return UserModel.fromJsonList(data["data"]["user"]);
    });
  }

  @override
  void dispose() {}
}
