import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'operacao_page_model.dart';
export 'operacao_page_model.dart';

class OperacaoPageWidget extends StatefulWidget {
  const OperacaoPageWidget({super.key});

  @override
  State<OperacaoPageWidget> createState() => _OperacaoPageWidgetState();
}

class _OperacaoPageWidgetState extends State<OperacaoPageWidget> {
  late OperacaoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OperacaoPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().PageTitle = 'Template';
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerContentCmpModel,
            updateCallback: () => setState(() {}),
            child: const DrawerContentCmpWidget(),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  maxWidth: 1000.0,
                ),
                decoration: const BoxDecoration(
                  color: Color(0x3FF1F4F8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.85,
                        constraints: const BoxConstraints(
                          maxWidth: 800.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 16.0, 8.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.pgHeaderCmpModel,
                                  updateCallback: () => setState(() {}),
                                  child: const PgHeaderCmpWidget(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 0.0, 0.0),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.73,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
