import 'package:untitled3/army/baseFrame/ArmyContainer.dart';
import 'package:untitled3/army/baseFrame/ArmyStructure.dart';
import 'package:untitled3/army/parser/Decoder.dart';
import 'package:untitled3/army/parser/DecoderAdapter.dart';

class ArmyContainerDecoder with Decoder{
  @override
  Future<ArmyStructure> decode(list) async{
    List<ArmyStructure> subStr = [];
    if(list["subStr"] != null) {
      for(var item in list["subStr"]){
        subStr.add(await DecoderAdapter.getDecoder(item)
            .decode(item));
      }
    }

    ArmyContainer container = new ArmyContainer();
    container.strId = list['strId'] == null ? "" : list['strId'];
    container.strName = list['strName'] == null ? "" : list['strName'];
    container.strType = list['strType'] == null ? "" : list['strType'];
    container.subStr = subStr;
    return container;
  }
}