// Copyright (c) 2017, vasiliy. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_components/angular_components.dart';

import 'forms/dictionary_form.dart';

@Component(
  selector: 'my-app',
  template: '<dict-form></dict-form>',
  directives: const [materialDirectives, DictionaryForm],
  providers: const [materialProviders],
)
class AppComponent {
  // Nothing here yet. All logic is in HelloDialog.
}
