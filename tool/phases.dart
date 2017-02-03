import 'package:build_runner/build_runner.dart' show InputSet, PhaseGroup;
import 'package:source_gen_annotation_issue/code_generator/value_generator.dart'
    show ModelGenerator;
import 'package:source_gen/source_gen.dart' show GeneratorBuilder;

final PhaseGroup phases = new PhaseGroup()
  ..newPhase().addAction(
      new GeneratorBuilder([new ModelGenerator()]),
      new InputSet('source_gen_annotation_issue', const [
        'lib/model/**.dart',
      ]));
