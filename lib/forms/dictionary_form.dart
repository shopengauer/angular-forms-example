import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/angular2.dart';

import 'dictionary.dart';
import 'package:angular_forms_example/directive/highlight_directve.dart';

const List<String> _dictType = const [
  'Англо-русский',
  'Русско-английский',
];




@Component(
  selector: 'dict-form',
  templateUrl: 'dictionary_form.html',
  directives: const [HighlightDirective]
)
class DictionaryForm{

  List<String> get dictType => _dictType;
  Dictionary model = new Dictionary('Технический', 'Англо-русский');
  bool submitted = false;

  void onSubmit(){
    submitted = true;
  }

  Map<String,bool> controlStateClasses(NgControl control) => {
    'ng-dirty': control.dirty ?? false,
    'ng-pristine': control.pristine ?? false,
    'ng-touched': control.touched ?? false,
    'ng-untouched': control.untouched ?? false,
    'ng-valid': control.valid ?? false,
    'ng-invalid': control.valid == false
  };

 // TODO: Remove this when we're done
  String get diagnostic => '$model';
}
