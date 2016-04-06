library semplex.client.ext1.components.about.block4.block4;

import 'package:angular2/angular2.dart';
import 'dart:html';
import 'dart:async';

@Component(
    selector: 'block4-cmp',
    templateUrl: 'block4.html',
    styleUrls: const [
      'block4.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES])
class Block4 {
  ElementRef _hostRef;
  Element get _host => _hostRef.nativeElement;
  Element get _leftPart =>
      _host.querySelector('div#bottom-segment div#left-part');
  Element get _rightPart =>
      _host.querySelector('div#bottom-segment div#right-part');

  Block4(this._hostRef) {
    new Future.delayed(new Duration(seconds: 1), () => pushStyle());
    window.onResize.listen((param) => pushStyle());
  }

  pushStyle() {
    _rightPart.style.height = '';
    _leftPart.style.height = '';
    if (_leftPart.offsetHeight == _rightPart.offsetHeight) return;
    if (_leftPart.offsetHeight > _rightPart.offsetHeight) {
      _rightPart.style.height = '${_leftPart.offsetHeight}px';
    } else {
      _leftPart.style.height = '${_rightPart.offsetHeight}px';
    }
  }
}
