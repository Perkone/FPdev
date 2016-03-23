library semplex.client.ext1.components.about.block1.block1;

import 'package:angular2/angular2.dart';
import 'dart:html';

import '../../button1/button1.dart';

@Component(
    selector: 'block1-cpt',
    templateUrl: 'block1.html',
    styleUrls: const['block1.css'],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Button1]
)
class Block1 {

  bMousedown(Event event, String color) {
    (event.currentTarget as Element).attributes.addAll({
      'style' : 'background-color: $color; box-shadow: none'
    });
  }

  bMouseup(event) {
    (event.currentTarget as Element).attributes.remove('style');
  }

  onSwitch(Event evt) {
    String location = (evt.currentTarget as Element).attributes['location'];
    window.location.assign("${window.location.origin}/${location}");
  }

}
