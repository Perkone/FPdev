library semplex.client.ext1.components.about.block2.block2;

import 'package:angular2/angular2.dart';
import 'dart:html';
import 'dart:async';

import 'package:semplex_client_ext1/components/button1/button1.dart';

@Component(
    selector: 'block2-cmp',
    templateUrl: 'block2.html',
    styleUrls: const [
      'block2.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Button1])
class Block2 {
  ElementRef _hostRef;
  Element get _host => _hostRef.nativeElement;
  Element get _bottomSegment => _host.querySelector('div#bottom-segment');
  String hostHeight;
  String bsh;
  String bsw;

  Block2(this._hostRef) {
    new Future.delayed(new Duration(seconds: 2), () => pushStyle());
    window.onResize.listen((param) => pushStyle());
  }

  pushStyle() {
    hostHeight = '${_host.offsetHeight}px';
    bsh = '${_bottomSegment.offsetHeight}px';
    bsw = '${(_host.offsetWidth-_bottomSegment.offsetWidth)/2}px';
  }

  onSwitch(Event evt) {
    String location = (evt.currentTarget as Element).attributes['location'];
    window.location.assign("${window.location.origin}/${location}");
  }
}
