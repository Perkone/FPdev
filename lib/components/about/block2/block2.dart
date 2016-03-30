library semplex.client.ext1.components.about.block2.block2;

import 'package:angular2/angular2.dart';
import 'dart:html';

import 'package:semplex_client_ext1/components/button1/button1.dart';

@Component(
    selector: 'block2-cmp',
    templateUrl: 'block2.html',
    styleUrls: const [
      'block2.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Button1])
class Block2 {
  onSwitch(Event evt) {
    String location = (evt.currentTarget as Element).attributes['location'];
    window.location.assign("${window.location.origin}/${location}");
  }
}
