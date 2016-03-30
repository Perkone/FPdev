library semplex.client.ext1.components.about.about;

import 'package:angular2/angular2.dart';
// import 'dart:html';

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
class About
// implements OnInit
{
  // ElementRef _elementRef;
  // Element get _generalElement =>
  //     (_elementRef.nativeElement as Element).children[0];
  // int _numberOfScreens;
  // int _currentScreen;
  //
  // About(this._elementRef) : _currentScreen = 0 {}
  //
  // ngOnInit() {
  //   _numberOfScreens = _generalElement.children.length;
  // }
  //
  // onScroll(Event evt) {
  //   if (_numberOfScreens < 2) return;
  // }
  //
  // onWheel(WheelEvent evt) {
  //   if (_numberOfScreens < 2) return;
  //   if (evt.deltaY > 0 && _currentScreen < _numberOfScreens - 1) {
  //     _generalElement.children[_currentScreen + 1].scrollIntoView();
  //     _currentScreen++;
  //   }
  //   if (evt.deltaY < 0 && _currentScreen > 0) {
  //     _generalElement.children[_currentScreen - 1].scrollIntoView();
  //     _currentScreen--;
  //   }
  // }
}
