part of 'app_controller.dart';

mixin _$AppController on _AppBase, Store {
  final _$valueAtom = Atom(name: '_AppBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  void increment() {
    final _$actionInfo =
        _$_AppBaseActionController.startAction(name: '_AppBase.increment');
    try {
      return super.increment();
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
