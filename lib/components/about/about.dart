library semplex.client.ext1.components.about.about;

import 'package:angular2/angular2.dart';

import 'block1/block1.dart';
import 'block2/block2.dart';
import 'block3/block3.dart';
import 'block4/block4.dart';
import 'block5/block5.dart';
import 'block6/block6.dart';
import 'mini_block/mini_block.dart';

@Component(
    selector: 'about-cmp',
    templateUrl: 'about.html',
    styleUrls: const [
      'about.css',
      'package:semplex_client_ext1/components/style.css'
    ],
    directives: const [
      CORE_DIRECTIVES,
      FORM_DIRECTIVES,
      Block1,
      Block2,
      Block3,
      Block4,
      Block5,
      Block6,
      MiniBlock
    ])
class About {}
