part of 'custom_combobox_controller.dart';

mixin _$CustomComboboxController on _CustomComboboxBase, Store {
  final _$valueAtom = Atom(name: '_CustomComboboxBase.value');

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

  final _$_CustomComboboxBaseActionController =
      ActionController(name: '_CustomComboboxBase');

  @override
  void increment() {
    final _$actionInfo = _$_CustomComboboxBaseActionController.startAction(
        name: '_CustomComboboxBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CustomComboboxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
