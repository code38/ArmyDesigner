import 'package:untitled3/army/baseFrame/ArmyRuleEffect.dart';
import 'package:untitled3/army/baseFrame/ArmyStructure.dart';

import 'Decoder.dart';

class ArmyRuleEffectDecoder with Decoder{
  @override
  Future<ArmyStructure> decode(list) async{
    ArmyRuleEffect limit = new ArmyRuleEffect();
    limit.strId = list['strId'] == null ? "" : list['strId'];
    limit.strName = list['strName'] == null ? "" : list['strName'];
    limit.strType = list['strType'] == null ? "" : list['strType'];
    limit.effectCode = list['effectCode'] == null ? "" : list['effectCode'];
    limit.effectDesc = list['effectDesc'] == null ? "" : list['effectDesc'];
    return limit;
  }

}