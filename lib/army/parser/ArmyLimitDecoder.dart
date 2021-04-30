import 'package:untitled3/army/baseFrame/ArmyLimit.dart';
import 'package:untitled3/army/baseFrame/ArmyStructure.dart';

import 'Decoder.dart';

///描述相关规则的限制
class ArmyLimitDecoder with Decoder{
  @override
  Future<ArmyStructure> decode(list) async{
    ArmyLimit limit = new ArmyLimit();
    limit.strId = list['strId'] == null ? "" : list['strId'];
    limit.strName = list['strName'] == null ? "" : list['strName'];
    limit.strType = list['strType'] == null ? "" : list['strType'];
    limit.limitCode = list['limitCode'] == null ? "" : list['limitCode'];
    limit.limitDesc = list['limitDesc'] == null ? "" : list['limitDesc'];
    return limit;
  }
}