library source_gen_annotation_issue.model.menu_item;

import 'package:source_gen_annotation_issue/designer.dart' show MenuItemTarget;

//@EnumClass()
//class MenuItemTarget {
//}


abstract class Serializable {}

abstract class MenuItem extends Serializable {
  // all except separator
  MenuItemTarget target;

}

class EnumClass {
  const EnumClass();
}


