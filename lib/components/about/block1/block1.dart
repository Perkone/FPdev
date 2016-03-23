library semplex.client.ext1.components.about.block1.block1;

import 'package:angular2/angular2.dart';
import 'dart:html';

import 'package:semplex_client_ext1/components/button1/button1.dart';

@Component(
    selector: 'block1-cmp',
    templateUrl: 'block1.html',
    styleUrls: const[
      'block1.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Button1]
)
class Block1 {

  onSwitch(Event evt) {
    String location = (evt.currentTarget as Element).attributes['location'];
    window.location.assign("${window.location.origin}/${location}");
  }

}
