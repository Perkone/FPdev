library semplex.client.ext1.components.button1.button1;

import 'package:angular2/angular2.dart';
import 'dart:html';

@Component(
    selector: 'button1-cpt',
    templateUrl: 'button1.html',
    styleUrls: const['button1.css'],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES]
)
class Button1 {

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