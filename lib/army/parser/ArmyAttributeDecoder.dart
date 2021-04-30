import 'package:untitled3/army/baseFrame/ArmyAttribute.dart';
import 'package:untitled3/army/baseFrame/ArmyStructure.dart';
import 'package:untitled3/army/parser/Decoder.dart';

///属性
class ArmyAttributeDecoder with Decoder{
  @override
  Future<ArmyStructure> decode(list) async {
    ArmyAttribute attribute = new ArmyAttribute();
    attribute.strId = list['strId'] == null ? "" : list['strId'];
    attribute.strName = list['strName'] == null ? "" : list['strName'];
    attribute.strType = list['strType'] == null ? "" : list['strType'];
    attribute.attrName = list['attrName'] == null ? "" : list['attrName'];
    attribute.attrValue = list['attrValue'] == null ? "" : list['attrValue'];
    return attribute;
  }
  
}