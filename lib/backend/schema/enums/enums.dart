import 'package:collection/collection.dart';

enum FuncaoEnum {
  LIDER,
  GERENTE,
  RECEPCIONISTA,
  VENDEDOR,
}

enum MessageTypeEnum {
  acaoCreateCommand,
  acaoLojaCreateCommand,
  acaoEquipeCreateCommand,
  acaoUpdateCommand,
  acaoLojaUpdateCommand,
  acaoEquipeUpdateCommand,
  acaoDeleteCommand,
  acaoLojaDeleteCommand,
  acaoEquipeDeleteCommand,
  acaoGetAllCommand,
  acaoGetByIdCommand,
  acaoLojaGetByAcaoIdCommand,
  acaoEquipeGetByAcaoIdCommand,
}

enum ActionTypeEnum {
  Pedido,
  Planograma,
  Estoque,
}

enum FrequencyEnum {
  Diario,
  Semanal,
  Quinzenal,
  Mensal,
  Bimestral,
}

enum TipoConvite {
  Whatsapp,
  Folheto,
  Ligacao,
  Passante,
  RedeSocial,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (FuncaoEnum):
      return FuncaoEnum.values.deserialize(value) as T?;
    case (MessageTypeEnum):
      return MessageTypeEnum.values.deserialize(value) as T?;
    case (ActionTypeEnum):
      return ActionTypeEnum.values.deserialize(value) as T?;
    case (FrequencyEnum):
      return FrequencyEnum.values.deserialize(value) as T?;
    case (TipoConvite):
      return TipoConvite.values.deserialize(value) as T?;
    default:
      return null;
  }
}
