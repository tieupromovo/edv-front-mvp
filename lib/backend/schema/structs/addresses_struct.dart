// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressesStruct extends BaseStruct {
  AddressesStruct({
    int? addressId,
    String? postalCode,
    String? street,
    String? number,
    String? complement,
    String? neighborhood,
    String? city,
    String? state,
    String? country,
    String? addressType,
  })  : _addressId = addressId,
        _postalCode = postalCode,
        _street = street,
        _number = number,
        _complement = complement,
        _neighborhood = neighborhood,
        _city = city,
        _state = state,
        _country = country,
        _addressType = addressType;

  // "addressId" field.
  int? _addressId;
  int get addressId => _addressId ?? 0;
  set addressId(int? val) => _addressId = val;

  void incrementAddressId(int amount) => addressId = addressId + amount;

  bool hasAddressId() => _addressId != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;

  bool hasStreet() => _street != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "complement" field.
  String? _complement;
  String get complement => _complement ?? '';
  set complement(String? val) => _complement = val;

  bool hasComplement() => _complement != null;

  // "neighborhood" field.
  String? _neighborhood;
  String get neighborhood => _neighborhood ?? '';
  set neighborhood(String? val) => _neighborhood = val;

  bool hasNeighborhood() => _neighborhood != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "addressType" field.
  String? _addressType;
  String get addressType => _addressType ?? '';
  set addressType(String? val) => _addressType = val;

  bool hasAddressType() => _addressType != null;

  static AddressesStruct fromMap(Map<String, dynamic> data) => AddressesStruct(
        addressId: castToType<int>(data['addressId']),
        postalCode: data['postalCode'] as String?,
        street: data['street'] as String?,
        number: data['number'] as String?,
        complement: data['complement'] as String?,
        neighborhood: data['neighborhood'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        addressType: data['addressType'] as String?,
      );

  static AddressesStruct? maybeFromMap(dynamic data) => data is Map
      ? AddressesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'addressId': _addressId,
        'postalCode': _postalCode,
        'street': _street,
        'number': _number,
        'complement': _complement,
        'neighborhood': _neighborhood,
        'city': _city,
        'state': _state,
        'country': _country,
        'addressType': _addressType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'addressId': serializeParam(
          _addressId,
          ParamType.int,
        ),
        'postalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'complement': serializeParam(
          _complement,
          ParamType.String,
        ),
        'neighborhood': serializeParam(
          _neighborhood,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'addressType': serializeParam(
          _addressType,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressesStruct(
        addressId: deserializeParam(
          data['addressId'],
          ParamType.int,
          false,
        ),
        postalCode: deserializeParam(
          data['postalCode'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        complement: deserializeParam(
          data['complement'],
          ParamType.String,
          false,
        ),
        neighborhood: deserializeParam(
          data['neighborhood'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        addressType: deserializeParam(
          data['addressType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressesStruct &&
        addressId == other.addressId &&
        postalCode == other.postalCode &&
        street == other.street &&
        number == other.number &&
        complement == other.complement &&
        neighborhood == other.neighborhood &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        addressType == other.addressType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        addressId,
        postalCode,
        street,
        number,
        complement,
        neighborhood,
        city,
        state,
        country,
        addressType
      ]);
}

AddressesStruct createAddressesStruct({
  int? addressId,
  String? postalCode,
  String? street,
  String? number,
  String? complement,
  String? neighborhood,
  String? city,
  String? state,
  String? country,
  String? addressType,
}) =>
    AddressesStruct(
      addressId: addressId,
      postalCode: postalCode,
      street: street,
      number: number,
      complement: complement,
      neighborhood: neighborhood,
      city: city,
      state: state,
      country: country,
      addressType: addressType,
    );
