library semplex.client.front_page;

import 'package:angular2/angular2.dart';
//import 'dart:html';

import 'block1/fp_b1.dart';


@Component(
    selector: 'front-page',
    templateUrl: 'front_page.html',
    styleUrls: const['front_page.css'],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Block1]
)
class FrontPage
//    implements OnInit
{

//  ElementRef _hostRef;
//  Element _host;
//
//  FrontPage(this._hostRef) {
//    _host=_hostRef.nativeElement as Element;
//  }

//  ngOnInit(){
//    Element elemFB_B1 = _host.querySelector('fp-b1');
//    elemFB_B1.attributes['style'] = '"background-image: url(1.jpg);"';
//  }



//  Map get dynamicStyles => {
//    'background-image' : 'url(1.jpg)'
//  };

}