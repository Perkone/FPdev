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

//  Map b1Style;
//  Map b2Style;
//  final Map noShadowStyle;
//
//  Block1()
//      :noShadowStyle={'box-shadow' : 'none'},
//        b1Style = {},
//        b2Style = {};

//  b1Mousedown(String color) {
//    b1Style = {
//      'background-color' :
//    };
//    b1Style.addAll(noShadowStyle);
//  }
//
//  b1Mouseup() {
//    b1Style.clear();
//  }
//
//  b2Mousedown() {
//    b2Style = {
//      'background-color' :
//    };
//    b2Style.addAll(noShadowStyle);
//  }
//
//  b2Mouseup() {
//    b2Style.clear();
//  }

  bMousedown(Event event, String color) {
    (event.currentTarget as Element).attributes.addAll({
      'style' : 'background-color: $color; box-shadow: none'
    });
  }

  bMouseup(event) {
    (event.currentTarget as Element).attributes.remove('style');
  }

}