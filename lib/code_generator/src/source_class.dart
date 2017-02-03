library fhir_client.code_generator.source_class;

import 'package:analyzer/dart/element/element.dart'
    show ClassElement, Element, FieldElement;

const List<String> propertyMetadataTypeNames = const <String>[
  'TextInputPropertyMetadata'
];

class SourceClass {
  static bool needsGenerateModel(Element classElement) {
    // TODO(zoechi): more exact type check.
    return classElement is ClassElement &&
        (classElement.allSupertypes
            .any((interfaceType) => interfaceType.name == 'Serializable'));
  }

  final ClassElement element;

  List<FieldElement> _fields;
  List<FieldElement> get fields => _fields ??= element.fields;

  SourceClass(this.element);

  String generateCode() {
    final result = new StringBuffer();

    for (final f in fields) {
      // throws when constantValue is null
      print(f.type.element.metadata.first.constantValue.type.displayName);
      print('====== SUCCEEDED =====');
      if (f.type.element.metadata
          .any((m) => m.constantValue?.type?.displayName == 'EnumClass')) {
        result.write('''
      return ${f.displayName}.value;
''');
      }
    }
    return result.toString();
  }
}
