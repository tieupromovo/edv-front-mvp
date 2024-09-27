import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'visao_presenca_loja_teste_model.dart';
export 'visao_presenca_loja_teste_model.dart';

class VisaoPresencaLojaTesteWidget extends StatefulWidget {
  const VisaoPresencaLojaTesteWidget({super.key});

  @override
  State<VisaoPresencaLojaTesteWidget> createState() =>
      _VisaoPresencaLojaTesteWidgetState();
}

class _VisaoPresencaLojaTesteWidgetState
    extends State<VisaoPresencaLojaTesteWidget> {
  late VisaoPresencaLojaTesteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisaoPresencaLojaTesteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF539A80),
      const Color(0xFF4A57C1),
      const Color(0xFF3E8DD0)
    ];
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.8,
        constraints: const BoxConstraints(
          maxWidth: 900.0,
          maxHeight: 300.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 32.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FutureBuilder<ApiCallResponse>(
                                future: OnBoardingGroup.clientsListCall.call(
                                  jwt: currentAuthenticationToken,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final chartClientsListResponse =
                                      snapshot.data!;

                                  return SizedBox(
                                    width: 300.0,
                                    height: 200.0,
                                    child: Stack(
                                      children: [
                                        FlutterFlowPieChart(
                                          data: FFPieChartData(
                                            values: functions
                                                .functionValueInvitation(
                                                    chartClientsListResponse
                                                        .jsonBody)!,
                                            colors: chartPieChartColorsList,
                                            radius: [30.0],
                                          ),
                                          donutHoleRadius: 60.0,
                                          donutHoleColor: Colors.transparent,
                                          sectionLabelType:
                                              PieChartSectionLabelType.value,
                                          sectionLabelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Sora',
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.5, 0.0),
                                          child: FlutterFlowChartLegendWidget(
                                            entries: functions
                                                .functionInvitationtype(
                                                    chartClientsListResponse
                                                        .jsonBody)!
                                                .asMap()
                                                .entries
                                                .map(
                                                  (label) => LegendEntry(
                                                    chartPieChartColorsList[label
                                                            .key %
                                                        chartPieChartColorsList
                                                            .length],
                                                    label.value,
                                                  ),
                                                )
                                                .toList(),
                                            width: 100.0,
                                            height: 200.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      fontSize: 9.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            textPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 4.0, 0.0, 4.0),
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 8.0, 5.0, 8.0),
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            indicatorSize: 9.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Voltar',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
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
