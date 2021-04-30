import 'dart:io';
import 'dart:convert';

import 'package:untitled3/army/baseFrame/ArmyStructure.dart';
import 'package:untitled3/army/parser/DecoderAdapter.dart';

void main() async{
  var doc = await new File("lib/config/sampleBase.json");
  print("${doc.absolute.path}");
  print(await doc.exists() == true);

  var json = jsonDecode(doc.readAsStringSync());

  var decoder = DecoderAdapter.getDecoder(json);
  ArmyStructure army = await decoder.decode(json);
  print(army);
}