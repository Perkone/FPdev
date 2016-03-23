library semplex.client.ext1.components.about.about;

import 'package:angular2/angular2.dart';

import 'block1/block1.dart';
import 'block2/block2.dart';

@Component(
    selector: 'about-cpt',
    templateUrl: 'about.html',
    styleUrls: const['about.css'],
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES, Block1, Block2]
)
class About {
}