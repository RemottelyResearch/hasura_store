part of 'home_controller.dart';

mixin _$HomeController on _HomeBase, Store {
  Computed<ObservableStream<List<UserModel>>> _$listaProdutosComputed;

  @override
  ObservableStream<List<UserModel>> get listaProdutos =>
      (_$listaProdutosComputed ??=
              Computed<ObservableStream<List<UserModel>>>(
                  () => super.listaProdutos,
                  name: '_HomeBase.listaProdutos'))
          .value;

  final _$snapshotAtom = Atom(name: '_HomeBase.snapshot');

  @override
  Snapshot<List<UserModel>> get snapshot {
    _$snapshotAtom.reportRead();
    return super.snapshot;
  }

  @override
  set snapshot(Snapshot<List<UserModel>> value) {
    _$snapshotAtom.reportWrite(value, super.snapshot, () {
      super.snapshot = value;
    });
  }

  @override
  String toString() {
    return '''
snapshot: ${snapshot},
listaProdutos: ${listaProdutos}
    ''';
  }
}
