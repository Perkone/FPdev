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
  // int _numberOfBlocks;
  // int _currentBlock;
  // List<Element> _blocks;
  // int _toggleHeight;
  // Element _toggle;
  // double _prevDelta;
  // final int _deltaLimit;
  //
  // About(this._elementRef)
  //     : _currentBlock = 0,
  //       _prevDelta = 0.0,
  //       _deltaLimit = 500 {}
  //
  // ngOnInit() {
  //   _blocks = _generalElement.querySelectorAll('.block');
  //   _numberOfBlocks = _blocks.length;
  //   _toggle = _generalElement.querySelector('#toggle');
  //   _toggleHeight = _generalElement.clientHeight ~/ _numberOfBlocks;
  //   _toggle.style.height = '${_toggleHeight}px';
  // }
  //
  // onWheel(WheelEvent evt) {
  //   print(evt.deltaY);
  //   if (_numberOfBlocks < 2) return;
  //
  //   if (_prevDelta < _mod(evt.deltaY)) {
  //     _prevDelta = _mod(evt.deltaY);
  //   } else {
  //     mouseWheel(evt);
  //     _prevDelta = 0.0;
  //   }
  //
  //   // if (_prevDelta == 0.0) _prevDelta = _mod(evt.deltaY);
  //   // if (_prevDelta == _mod(evt.deltaY)) mouseWheel(evt);
  // }
  //
  // asdad(Event evt) {
  //   var asd = 12;
  // }
  //
  // void mouseWheel(WheelEvent evt) {
  //   if (evt.deltaY > 0) {
  //     _scrollToBlock(_currentBlock + 1);
  //   }
  //   if (evt.deltaY < 0) {
  //     _scrollToBlock(_currentBlock - 1);
  //   }
  // }
  //
  // void _scrollToBlock(int blockNumber) {
  //   if (!(blockNumber < _numberOfBlocks && blockNumber > -1)) return;
  //   _blocks.forEach((elem) {
  //     elem.style.top = '${-blockNumber*100}%';
  //   });
  //   _toggle.style.top = '${_toggleHeight*blockNumber}px';
  //   _currentBlock = blockNumber;
  // }
  //
  // num _mod(num i) => (i > 0 ? i : -i);
}
