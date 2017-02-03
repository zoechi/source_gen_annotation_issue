library source_gen_annotation_issue.model.menu_item;

import 'package:source_gen_annotation_issue/designer.dart' show MenuItemTarget;

abstract class Serializable {}

abstract class MenuItem extends Serializable {
  // all except separator
  MenuItemTarget target;

  // for code generation
  factory MenuItem() => new _$MenuItem._();
  MenuItem._();

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      new _$MenuItem._fromJson(json);

  MenuItem._fromJson(Map<String, dynamic> json) : super.fromJson(json);
}

