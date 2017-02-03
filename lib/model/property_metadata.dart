class PropertyMetadata {
  final String name;
  final String label;

  const PropertyMetadata({this.name, this.label});
}

abstract class InputPropertyMetadata extends PropertyMetadata {
  final int displayWidth;

  const InputPropertyMetadata(
      {String name, String label, this.displayWidth: 35})
      : super(name: name, label: label);
}

class TextInputPropertyMetadata extends InputPropertyMetadata {
  final int minLength;
  final int maxLength;

  const TextInputPropertyMetadata(
      {String name,
      String label,
      int displayWidth,
      this.minLength,
      this.maxLength: 255})
      : super(name: name, label: label, displayWidth: displayWidth);
}
