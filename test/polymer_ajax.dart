// Copyright (c) 2013, the polymer_elements.dart project authors.  Please see 
// the AUTHORS file for details. All rights reserved. Use of this source code is 
// governed by a BSD-style license that can be found in the LICENSE file.
// This work is a port of the polymer-elements from the Polymer project, 
// http://www.polymer-project.org/. 


library polymer_ajax;

import "dart:html";
import "package:polymer/polymer.dart";
import "package:unittest/unittest.dart";
import "package:unittest/html_enhanced_config.dart";

void main() { 
  useHtmlEnhancedConfiguration();

  initPolymer();
  
  test("polymer-ajax", () {
    var done = expectAsync0((){});
    var s = document.querySelector('polymer-ajax');
    s.addEventListener('polymerresponse', (event){
      expect(event.detail['response']['feed']['entry'].length, greaterThan(0));
      done();
    });
    
  });
}


