import 'package:source_gen_annotation_issue/designer.dart' show EnumClass;

@EnumClass()
class MenuItemTarget {
  static const MenuItemTarget form = const MenuItemTarget._('form');
  static const MenuItemTarget search = const MenuItemTarget._('search');
  static const MenuItemTarget action = const MenuItemTarget._('action');
  static const MenuItemTarget contextAction =
      const MenuItemTarget._('contextAction');
  static const MenuItemTarget separator = const MenuItemTarget._('separator');

  static const List<MenuItemTarget> values = const <MenuItemTarget>[
    MenuItemTarget.form,
    MenuItemTarget.search,
    MenuItemTarget.action,
    MenuItemTarget.contextAction,
    MenuItemTarget.separator,
  ];

  const MenuItemTarget._(this.value);

  final String value;
}
