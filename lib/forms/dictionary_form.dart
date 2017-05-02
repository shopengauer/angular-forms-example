import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';

import 'dictionary.dart';

const List<String> _dictType = const [
  'Англо-русский',
  'Русско-английский',
];

class DictionaryForm{

  List<String> get dictType => _dictType;
  Dictionary model = new Dictionary('Технический', 'Англо-русский');
  bool submitted = false;

  void onSubmit(){
    submitted = true;
  }

  String get diagnostic => '$model';
}
