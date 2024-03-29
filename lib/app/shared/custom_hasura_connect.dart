import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hive_cache_interceptor/hive_cache_interceptor.dart';

class CustomHasuraConnect {
  static HasuraConnect getConnect(FirebaseAuth auth) {
    return HasuraConnect(
      "https://loja-hasura.herokuapp.com/v1/graphql",
      interceptors: [
        TokenInterceptor(auth),
        LogInterceptor(),
        HiveCacheInterceptor(),
      ],
      headers: {},
    );
  }
}

class TokenInterceptor extends Interceptor {
  final FirebaseAuth auth;
  TokenInterceptor(this.auth);

  @override
  Future<void> onConnected(HasuraConnect connect) {}

  @override
  Future<void> onDisconnected() {}

  @override
  Future onError(HasuraError request, HasuraConnect connect) async {
    return request;
  }

  @override
  Future<Request> onRequest(Request request, HasuraConnect connect) async {
    final User user = await auth.currentUser;
    final String token = await user.getIdToken(true);
    if (token != null) {
      try {
        request.headers["Authorization"] = "Bearer ${token}";
        return request;
      } catch (e) {
        return null;
      }
    } else {
      Modular.to.pushReplacementNamed("/login");
    }
  }

  @override
  Future onResponse(Response data, HasuraConnect connect) async {
    return data;
  }

  @override
  Future<void> onSubscription(Request request, Snapshot snapshot) {}

  @override
  Future<void> onTryAgain(HasuraConnect connect) {}
}
