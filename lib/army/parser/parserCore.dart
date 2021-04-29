import 'package:yaml/yaml.dart';

void main() {
  var doc = loadYaml("unit: \nArmyContainer:\n  ArmyDescription: UnitName\n  ArmyAttribute:");
  print(doc);
}