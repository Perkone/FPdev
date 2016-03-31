library semplex.client.ext1.components.button1.button1;

import 'package:angular2/angular2.dart';
import 'dart:html';

@Component(
    selector: 'button1-cmp',
    templateUrl: 'button1.html',
    styleUrls: const [
      'button1.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES])
class Button1 {
  ElementRef _elementRef;
  Element get _host => _elementRef.nativeElement;
  Element get _clickLayer => _host.querySelector('#click-layer');
  void set _shadowOn(bool on) {
    _host.style.boxShadow = on ? '' : 'none';
  }

  String _clickColor;

  Button1(this._elementRef) : _clickColor = 'rgba(0, 0, 0, 0.1)' {
    _host.style.backgroundColor = _host.attributes['color'];
  }

  @HostListener('mousedown', const ['\$event'])
  Mousedown(MouseEvent event) {
    if (event.which != 1) return;

    _shadowOn = false;
    _clickLayer.style.backgroundColor = _clickColor;
  }

  @HostListener('mouseup', const ['\$event'])
  Mouseup(MouseEvent event) {
    if (event.which != 1) return;

    _shadowOn = true;
    _clickLayer.style.backgroundColor = '';
  }
}
