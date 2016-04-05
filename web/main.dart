import 'package:angular2/bootstrap.dart';
import 'dart:html';
import 'package:semplex_client_ext1/components/about/about.dart';

const int _minHeight = 650;
const int _minWidth = 1100;

main() {
  bootstrap(About);
  // document.body.parent.style.height = '${_minHeight}px';
  // document.body.parent.style.width = '${_minWidth}px';
  _adjustScale();
  window.onResize.listen((param) => _adjustScale());
}

void _adjustScale() {
  if (window.innerHeight < _minHeight) document.body.parent.style.height =
      '${_minHeight}px';
  else document.body.parent.style.height = '';

  if (window.innerWidth < _minWidth) document.body.parent.style.width =
      '${_minWidth}px';
  else document.body.parent.style.width = '';
}
