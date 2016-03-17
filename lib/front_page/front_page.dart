library semplex.client.front_page;

import 'package:angular2/angular2.dart';

import 'block1/fp_b1.dart';


@Component(
    selector: 'front-page',
    templateUrl: 'front_page.html',
    styleUrls: const['front_page.css'],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Block1]
)
class FrontPage {
}