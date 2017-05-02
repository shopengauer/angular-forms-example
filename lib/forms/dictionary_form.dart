import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';

import 'dictionary.dart';

const List<String> _dictType = const [
  'Англо-русский',
  'Русско-английский',
];

@Component(
  selector: 'dict-form',
  templateUrl: 'dictionary_form.html'
)
class DictionaryForm{

  List<String> get dictType => _dictType;
  Dictionary model = new Dictionary('Технический', 'Англо-русский');
  bool submitted = false;

  void onSubmit(){
    submitted = true;
  }

 // TODO: Remove this when we're done
  String get diagnostic => '$model';
}
