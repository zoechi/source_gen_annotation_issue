
class ClassMetadata {
  final String name;
  final bool isAbstract;
  final Type superClass;

  const ClassMetadata(
      {this.name, this.isAbstract: false, this.superClass});
}
