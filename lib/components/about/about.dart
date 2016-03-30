library semplex.client.ext1.components.about.about;

import 'package:angular2/angular2.dart';
import 'dart:html';

import 'block1/block1.dart';
import 'block2/block2.dart';
import 'block4/block4.dart';

@Component(
    selector: 'about-cmp',
    templateUrl: 'about.html',
    styleUrls: const ['about.css'],
    directives: const [
      CORE_DIRECTIVES,
      FORM_DIRECTIVES,
      Block1,
      Block2,
      Block4
    ])
class About implements OnInit {
  ElementRef _elementRef;
  Element get _generalElement =>
      (_elementRef.nativeElement as Element).children[0];
  int _numberOfScreens;
  int _currentScreen;
  int offset;
  List<Element> blocks;
  int _toggleHeight;
  Element _toggle;

  About(this._elementRef)
      : _currentScreen = 1,
        offset = 0 {}

  ngOnInit() {
    blocks = _generalElement.querySelectorAll('.block');
    _numberOfScreens = blocks.length;
    _toggle = _generalElement.querySelector('#toggle');
    _toggleHeight = _generalElement.clientHeight ~/ _numberOfScreens;
    _toggle.style.height = '${_toggleHeight}px';
  }

  onWheel(WheelEvent evt) {
    if (_numberOfScreens < 2) return;
    if (evt.deltaY > 0 && _currentScreen < _numberOfScreens) {
      offset -= 100;
      _currentScreen++;
    }
    if (evt.deltaY < 0 && _currentScreen > 1) {
      offset += 100;
      _currentScreen--;
    }
    blocks.forEach((elem) {
      elem.style.top = '${offset}%';
    });
    _toggle.style.top = '${_toggleHeight*(_currentScreen-1)}px';
  }
}
