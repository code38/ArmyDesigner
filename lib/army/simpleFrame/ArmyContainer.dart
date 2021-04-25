import 'ArmyStructure.dart';

/// @author XTeq
/// 结构中的包含容器组件，该结构可包含包括容器在内的的军表组件
/// The container component, This component can contain other ArmyStructure
class ArmyContainer extends ArmyStructure{
  ///子结构列表
  ///在添加时将会检查是否符合相关限制
  List<ArmyStructure> _subStructure;


}