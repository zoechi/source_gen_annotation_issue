library enum_class.dart.model.serializable;

import 'package:source_gen_annotation_issue/designer.dart' /*show all */;


//part 'serializable.g.dart';

typedef Serializable SerializableFactory(Map<String, dynamic> json);


abstract class Serializable {

  static const String serializableKey = 'typeName';

  static final Map<String, ClassMetadata> classes = <String, ClassMetadata>{
    MenuItem.classMeta.name: MenuItem.classMeta,
  };

  static const TextInputPropertyMetadata idProperty =
      const TextInputPropertyMetadata(name: 'id');
  static const List<PropertyMetadata> propertiesMeta = const <PropertyMetadata>[
    idProperty
  ];


}
