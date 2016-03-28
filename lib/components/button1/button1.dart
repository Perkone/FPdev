library semplex.client.ext1.components.button1.button1;

import 'package:angular2/angular2.dart';
import 'dart:html';

import 'package:semplex_client_ext1/colors.dart';

@Component(
    selector: 'button1-cmp',
    templateUrl: 'button1.html',
    styleUrls: const[
      'button1.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [
      CORE_DIRECTIVES,
      FORM_DIRECTIVES
    ]
)
class Button1 {

  ElementRef _elementRef;
  String _mainColor;
  String _hoverColor;
  String _pushColor;

  Element get _host => _elementRef.nativeElement;

  String get _currentColor => _host.style.backgroundColor;

  void set _currentColor(String str) {
    _host.style.backgroundColor = str;
  }

  void set _shadowOn(bool on) {
    _host.style.boxShadow = on ? '' : 'none';
  }

  Button1(this._elementRef) {
    _mainColor = _host.attributes['color'];
    _hoverColor = RGBColorBrightness(_mainColor, 90);
    _pushColor = RGBColorBrightness(_mainColor, 80);
    _currentColor = _mainColor;
  }

  @HostListener('mousedown', const['\$event'])
  Mousedown(MouseEvent event) {
    if (event.which != 1)
      return;

    _shadowOn = false;
    _currentColor = _pushColor;
  }

  @HostListener('mouseup', const['\$event'])
  Mouseup(MouseEvent event) {
    if (event.which != 1)
      return;

    _shadowOn = true;
    _currentColor = _hoverColor;
  }

  @HostListener('mouseover', const['\$event'])
  Mouseover(MouseEvent event) {
    if (event.which == 0)
      _currentColor = _hoverColor;
  }

  @HostListener('mouseout', const['\$event'])
  Mouseout(MouseEvent event) {
    _currentColor = _mainColor;
  }

}
