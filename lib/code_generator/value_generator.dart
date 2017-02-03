library fhir_client.value_generator;

import 'dart:async';

import 'package:analyzer/dart/element/element.dart' show ClassElement, Element;
import 'package:build/build.dart' show BuildStep;
import 'package:source_gen/source_gen.dart' show Generator;
import 'src/source_class.dart' show SourceClass;

class ModelGenerator extends Generator {
  @override
  Future<String> generate(Element element, BuildStep buildStep) async {
    if (element is! ClassElement || !SourceClass.needsGenerateModel(element)) {
      return null;
    }
    return new SourceClass(element as ClassElement).generateCode();
  }
}
