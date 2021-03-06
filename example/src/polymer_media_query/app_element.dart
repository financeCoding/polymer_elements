// Copyright (c) 2013, the polymer_elements.dart project authors.  Please see 
// the AUTHORS file for details. All rights reserved. Use of this source code is 
// governed by a BSD-style license that can be found in the LICENSE file.
// This work is a port of the polymer-elements from the Polymer project, 
// http://www.polymer-project.org/. 

library polymer_elements.polymer_media_query.app_element;

import 'package:polymer/polymer.dart';
import 'package:logging/logging.dart';

@CustomTag('app-element')
class AppElement extends PolymerElement {
  AppElement.created() : super.created();

  final _logger = new Logger('app-element');

  @override
  void enteredView() {
    super.enteredView();
   
    var output = $['output'];
    // on-mediachange would give true or false as second param to the handler
    this.on['polymer-mediachange'].listen((e) {
    // TODO change back when MediaQuery is properly supported by Dart
      output.text += "\nevent: ${e.type} query: ${e.detail['media']} matches: ${e.detail['matches']}"; 
    });
  }
}
