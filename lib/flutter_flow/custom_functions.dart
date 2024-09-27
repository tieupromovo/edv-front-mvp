import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

List<String>? functionInvitationtype(List<dynamic>? json) {
  // extract invitation_type from my json api client list
  if (json == null) return null;

  final Set<String> invitationTypes = {}; // Set to store unique values
  for (final item in json) {
    final String? invitationType = item['invitation_type'];
    if (invitationType != null) invitationTypes.add(invitationType);
  }

  return invitationTypes.toList(); // Convert Set back to List
}

List<int>? extractPresenceCountCheckins(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<int> labels = [];
  for (var item in json) {
    if (item['countCheckins'] != null) {
      labels.add(item['countCheckins']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}

List<int>? extractSalesCount(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<int> labels = [];
  for (var item in json) {
    if (item['countSales'] != null) {
      labels.add(item['countSales']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}

List<int>? extractPresenceCountSchedules(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<int> labels = [];
  for (var item in json) {
    if (item['countSchedules'] != null) {
      labels.add(item['countSchedules']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}

List<String>? extractPresencedate(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<String> labels = [];
  for (var item in json) {
    if (item['date'] != null) {
      labels.add(item['date']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}

List<String>? extractPresenceInvitationtype(List<dynamic>? json) {
  // return the invitationType from the json
  if (json != null) {
    List<String> invitationTypes = [];
    for (var item in json) {
      if (item is Map<String, dynamic> && item.containsKey('invitationType')) {
        invitationTypes.add(item['invitationType']);
      }
    }
    return invitationTypes;
  }
  return null;
}

List<String>? extractdateRange(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<String> labels = [];
  for (var item in json) {
    if (item['dateRange'] != null) {
      labels.add(item['dateRange']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}

List<int>? extractSalesHora(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<int> labels = [];
  for (var item in json) {
    if (item['hora'] != null) {
      labels.add(item['hora']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}

List<String>? extractBetweenDate(List<dynamic>? json) {
  // extract start_at and finish_at from json, compare the dates and return all dates between them
  if (json == null || json.isEmpty) {
    return null;
  }

  final List<String> dates = [];

  final DateFormat dateFormat = DateFormat('dd-MM-yyyy');

  // Use dateFormat to parse the custom date format
  final DateTime startAt = dateFormat.parse(json[0]['start_at']);
  final DateTime finishAt = dateFormat.parse(json[0]['finish_at']);

  if (startAt.isAfter(finishAt)) {
    return null;
  }

  // Loop to generate all dates between startAt and finishAt
  for (int i = 0; i <= finishAt.difference(startAt).inDays; i++) {
    final DateTime date = startAt.add(Duration(days: i));
    dates.add(dateFormat.format(date)); // Format date back to 'dd-MM-yyyy'
  }

  return dates;
}

List<int>? functionValueInvitation(List<dynamic>? json) {
  // extract the integer [1] for each invitation_type in the json api client list
  if (json == null) return null;
  final invitationTypes = json.map((e) => e['invitation_type']).toList();
  final values = <int>[];

  // create a map to count occurrences
  final Map<String, int> countMap = {};

  for (final type in invitationTypes) {
    if (type != null && type is String) {
      countMap[type] = (countMap[type] ?? 0) + 1;
    }
  }

  return countMap.values.toList();
}

List<int> functionCountStoresID(List<dynamic> json) {
  // Verifica se o json está vazio ou é nulo
  if (json.isEmpty) return [0];

  final storeIds = <int>{}; // Usa um set para garantir que os IDs sejam únicos

  // Percorre cada item da lista JSON
  for (final item in json) {
    // Extrai o storeId
    final storeId = item['storeId'] as int?;
    if (storeId != null) {
      storeIds.add(storeId); // Adiciona o storeId único ao set
    }
  }

  // Retorna a quantidade de IDs únicos
  return [storeIds.length];
}

int validationMeta(int integer) {
  // I need to validate an inputText widget so that the value is greater than 0 and less than or equal to 250
  if (integer > 0 && integer <= 250) {
    return integer;
  } else {
    throw Exception(
        'Input value must be greater than 0 and less than or equal to 250');
  }
}

String functionHourConvert(DateTime? dataConvert) {
  // Formatar a data para o formato desejado (13-09-2024 16:14:19)
  final formatter = DateFormat('dd-MM-yyyy HH:mm:ss');
  final formattedDate = formatter.format(dataConvert!);

  // Retornar a data como String formatada
  return formattedDate;
}

bool? functionValidationHour(
  String horaAtual,
  dynamic horaJson,
) {
  // Acesse o campo 'checkin_at' do mapa e assegure-se de que é uma string
  String checkinAtString = horaJson['checkin_at'] ??
      ''; // Aqui garantimos que checkinAtString será uma string

  // Verifica se checkinAtString não está vazio
  if (checkinAtString.isEmpty) {
    return false; // Ou você pode lançar um erro, dependendo da sua lógica
  }

  // Converte a string checkin_at para DateTime
  final checkinAt = DateFormat('dd-MM-yyyy HH:mm:ss').parse(checkinAtString);
  final now = DateFormat('dd-MM-yyyy HH:mm:ss').parse(horaAtual);

  // Calcula a diferença
  final difference = now.difference(checkinAt);

  // Retorna true se a diferença for maior que 30 minutos
  return difference.inMinutes > 30;
}

List<int>? extractCountInvitationType(List<dynamic>? json) {
// return the category from the json
  if (json == null) {
    return null;
  }
  List<int> labels = [];
  for (var item in json) {
    if (item['countInvitationType'] != null) {
      labels.add(item['countInvitationType']);
    }
  }
  return labels.isNotEmpty ? labels : null;
}
