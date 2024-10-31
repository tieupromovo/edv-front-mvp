import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'operacao_page_widget.dart' show OperacaoPageWidget;
import 'package:flutter/material.dart';

class OperacaoPageModel extends FlutterFlowModel<OperacaoPageWidget> {
  ///  Local state fields for this page.

  DateTime? dataAutal;

  ///  State fields for stateful widgets in this page.

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // Stores action output result for [Backend Call - API (ClientsCheckOut)] action in Button widget.
  ApiCallResponse? apiResultClientqc;
  // Model for DrawerContentCmp component.
  late DrawerContentCmpModel drawerContentCmpModel;

  /// Query cache managers for this widget.

  final _teamListAllcacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> teamListAllcache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _teamListAllcacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTeamListAllcacheCache() => _teamListAllcacheManager.clear();
  void clearTeamListAllcacheCacheKey(String? uniqueKey) =>
      _teamListAllcacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    pgHeaderCmpModel = createModel(context, () => PgHeaderCmpModel());
    drawerContentCmpModel = createModel(context, () => DrawerContentCmpModel());
  }

  @override
  void dispose() {
    pgHeaderCmpModel.dispose();
    drawerContentCmpModel.dispose();

    /// Dispose query cache managers for this widget.

    clearTeamListAllcacheCache();
  }
}
