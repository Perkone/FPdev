library semplex.client.front_page.block1;

import 'package:angular2/angular2.dart';
import 'dart:html';

@Component(
    selector: 'block1',
    templateUrl: 'fp_b1.html',
    styleUrls: const['fp_b1.css'],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES]
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
