import 'ArmyAttributeDecoder.dart';
import 'ArmyContainerDecoder.dart';
import 'ArmyDescriptionDecoder.dart';
import 'ArmyLimitDecoder.dart';
import 'ArmyRuleEffectDecoder.dart';
import 'ArmyVarAttributeDecoder.dart';
import 'Decoder.dart';


class DecoderAdapter{
  // ignore: non_constant_identifier_names
  static var _ArmyDescriptionDecoder = new ArmyDescriptionDecoder();
  // ignore: non_constant_identifier_names
  static var _ArmyLimitDecoder = new ArmyLimitDecoder();
  // ignore: non_constant_identifier_names
  static var _ArmyRuleEffectDecoder = new ArmyRuleEffectDecoder();
  // ignore: non_constant_identifier_names
  static var _ArmyAttributeDecoder = new ArmyAttributeDecoder();
  // ignore: non_constant_identifier_names
  static var _ArmyVarAttributeDecoder = new ArmyVarAttributeDecoder();
  // ignore: non_constant_identifier_names
  static var _ArmyContainerDecoder = new ArmyContainerDecoder();

  static Decoder getDecoder(map){
    switch (map['entityType']){
      case "ArmyDescription" :
        return _ArmyDescriptionDecoder;
      case "ArmyLimit" :
        return _ArmyLimitDecoder;
      case "ArmyRuleEffect" :
        return _ArmyRuleEffectDecoder;
      case "ArmyAttribute" :
        return _ArmyAttributeDecoder;
      case "ArmyVarAttribute" :
        return _ArmyVarAttributeDecoder;
      case "ArmyContainer" :
        return _ArmyContainerDecoder;
      default :
        throw UnimplementedError("Unimplemented Decoder!");
    }
  }
}