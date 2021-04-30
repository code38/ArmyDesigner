import 'package:untitled3/army/baseFrame/ArmyDescription.dart';
import 'package:untitled3/army/baseFrame/ArmyStructure.dart';

import 'Decoder.dart';

///仅提供描述，不具备包含能力与影响其他单位能力的组件
class ArmyDescriptionDecoder with Decoder{
  @override
  Future<ArmyStructure> decode(list) async{
    ArmyDescription description = new ArmyDescription();
    description.strId = list['strId'] == null ? "" : list['strId'];
    description.strName = list['strName'] == null ? "" : list['strName'];
    description.strType = list['strType'] == null ? "" : list['strType'];
    description.desc = list['desc'] == null ? "" : list['desc'];
    return description;
  }
}