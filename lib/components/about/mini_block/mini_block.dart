library semplex.client.ext1.components.about.mini_block.mini_block;

import 'package:angular2/angular2.dart';
import 'dart:html';

import 'package:semplex_client_ext1/components/button1/button1.dart';

@Component(
    selector: 'mini-block-cmp',
    templateUrl: 'mini_block.html',
    styleUrls: const [
      'mini_block.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Button1])
class MiniBlock {
  onSwitch(Event evt) {
    String location = (evt.currentTarget as Element).attributes['location'];
    window.location.assign("${window.location.origin}/${location}");
  }
}
