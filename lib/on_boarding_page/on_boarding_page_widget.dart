import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'on_boarding_page_model.dart';
export 'on_boarding_page_model.dart';

class OnBoardingPageWidget extends StatefulWidget {
  const OnBoardingPageWidget({super.key});

  @override
  State<OnBoardingPageWidget> createState() => _OnBoardingPageWidgetState();
}

class _OnBoardingPageWidgetState extends State<OnBoardingPageWidget>
    with TickerProviderStateMixin {
  late OnBoardingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnBoardingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().PageTitle = 'OnBoarding';
      setState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.txtNameTextController ??= TextEditingController();
    _model.txtNameFocusNode ??= FocusNode();

    _model.txtPhoneTextController ??= TextEditingController();
    _model.txtPhoneFocusNode ??= FocusNode();

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

    return FutureBuilder<ApiCallResponse>(
      future: TeamListAllCall.call(
        jwt: currentAuthenticationToken,
        actionId: currentUserData?.team.action.actionId,
        storeId: currentUserData?.team.store.storeId,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final onBoardingPageTeamListAllResponse = snapshot.data!;

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
                    height: MediaQuery.sizeOf(context).height * 0.88,
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 16.0, 8.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.85,
                            constraints: const BoxConstraints(
                              maxWidth: 800.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.72,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 16.0, 8.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Ação: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  currentUserData
                                                      ?.team.action.name,
                                                  '?',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                'Loja: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  currentUserData
                                                      ?.team.store.name,
                                                  '?',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: const Alignment(0.0, 0),
                                                  child: TabBar(
                                                    labelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    unselectedLabelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Sora',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    unselectedLabelStyle:
                                                        const TextStyle(),
                                                    indicatorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    tabs: const [
                                                      Tab(
                                                        text: 'Cliente',
                                                      ),
                                                      Tab(
                                                        text: 'Equipe',
                                                      ),
                                                    ],
                                                    controller:
                                                        _model.tabBarController,
                                                    onTap: (i) async {
                                                      [
                                                        () async {},
                                                        () async {}
                                                      ][i]();
                                                    },
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    controller:
                                                        _model.tabBarController,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .txtNameTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .txtNameFocusNode,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Nome do cliente',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      validator: _model
                                                                          .txtNameTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .txtPhoneTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .txtPhoneFocusNode,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Telefone do cliente',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      validator: _model
                                                                          .txtPhoneTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .txtPhoneMask
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .cmbConviteValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: TipoConvite
                                                                          .values
                                                                          .map((e) =>
                                                                              e.name)
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.cmbConviteValue = val),
                                                                      width:
                                                                          225.0,
                                                                      height:
                                                                          56.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Tipo de convite',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        _model.apiResultg9b = await OnBoardingGroup
                                                                            .clientsCheckInCall
                                                                            .call(
                                                                          jwt:
                                                                              currentAuthenticationToken,
                                                                          name: _model
                                                                              .txtNameTextController
                                                                              .text,
                                                                          phone: _model
                                                                              .txtPhoneTextController
                                                                              .text,
                                                                          invitationType:
                                                                              _model.cmbConviteValue,
                                                                        );

                                                                        if ((_model.apiResultg9b?.succeeded ??
                                                                            true)) {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: const Text('Inclusaoi de Lead'),
                                                                                content: const Text('Lead incluído'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: const Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: const Text('Erro'),
                                                                                content: const Text('Ocorreu algum erro no backend'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: const Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        }

                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      text:
                                                                          'Checkin',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            40.0,
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: Colors.white,
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Clientes na operação',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Sora',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future: OnBoardingGroup
                                                                      .clientsListCall
                                                                      .call(
                                                                    jwt:
                                                                        currentAuthenticationToken,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final listViewClientsListResponse =
                                                                        snapshot
                                                                            .data!;

                                                                    return Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final apiClientList =
                                                                            (listViewClientsListResponse.jsonBody.toList().map<ClientStruct?>(ClientStruct.maybeFromMap).toList() as Iterable<ClientStruct?>).withoutNulls.toList() ??
                                                                                [];

                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              apiClientList.length,
                                                                          itemBuilder:
                                                                              (context, apiClientListIndex) {
                                                                            final apiClientListItem =
                                                                                apiClientList[apiClientListIndex];
                                                                            return Card(
                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              elevation: 4.0,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    apiClientListItem.name,
                                                                                                    'nome',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        fontSize: 11.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  apiClientListItem.checkinAt,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        fontSize: 11.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  apiClientListItem.phone,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        fontSize: 11.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontStyle: FontStyle.italic,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  apiClientListItem.checkoutAt,
                                                                                                  textAlign: TextAlign.end,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        fontSize: 11.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(width: 16.0)),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          _model.apiResultjyo = await OnBoardingGroup.clientsCheckOutCall.call(
                                                                                            jwt: currentAuthenticationToken,
                                                                                            id: apiClientListItem.onboardingClientId,
                                                                                          );

                                                                                          if ((_model.apiResultjyo?.succeeded ?? true)) {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return AlertDialog(
                                                                                                  title: const Text('CheckOut'),
                                                                                                  content: const Text('Cliente saiu da operação'),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                      child: const Text('Ok'),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          } else {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return AlertDialog(
                                                                                                  title: const Text('ERRO'),
                                                                                                  content: const Text('Houve algum erro no backend'),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                      child: const Text('Ok'),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          }

                                                                                          setState(() {});
                                                                                        },
                                                                                        text: 'Checkout',
                                                                                        options: FFButtonOptions(
                                                                                          height: 35.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Inter',
                                                                                                color: Colors.white,
                                                                                                fontSize: 9.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: const BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .dropDownValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: (onBoardingPageTeamListAllResponse
                                                                              .jsonBody
                                                                              .toList()
                                                                              .map<TeamStruct?>(TeamStruct.maybeFromMap)
                                                                              .toList() as Iterable<TeamStruct?>)
                                                                          .withoutNulls
                                                                          .map((e) => valueOrDefault<String>(
                                                                                e.name,
                                                                                '?',
                                                                              ))
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.dropDownValue = val),
                                                                      width:
                                                                          16.0,
                                                                      height:
                                                                          56.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Selecione uma pessoa',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.apiResultsnh =
                                                                        await OnBoardingGroup
                                                                            .teamsCheckInCall
                                                                            .call(
                                                                      jwt:
                                                                          currentAuthenticationToken,
                                                                      teamId:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        (onBoardingPageTeamListAllResponse.jsonBody.toList().map<TeamStruct?>(TeamStruct.maybeFromMap).toList()
                                                                                as Iterable<TeamStruct?>)
                                                                            .withoutNulls
                                                                            .where((e) =>
                                                                                _model.dropDownValue ==
                                                                                valueOrDefault<String>(
                                                                                  e.name,
                                                                                  '-',
                                                                                ))
                                                                            .toList()
                                                                            .first
                                                                            .teamId,
                                                                        0,
                                                                      ),
                                                                    );

                                                                    if ((_model
                                                                            .apiResultsnh
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                const Text('CheckIN'),
                                                                            content:
                                                                                const Text('Entrada registrada'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                    } else {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                const Text('ERRO'),
                                                                            content:
                                                                                const Text('Ocorreu algum erro no backend'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                    }

                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Checkin',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Pessoas na operação',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Sora',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future: OnBoardingGroup
                                                                      .teamsListCall
                                                                      .call(
                                                                    jwt:
                                                                        currentAuthenticationToken,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final listViewTeamsListResponse =
                                                                        snapshot
                                                                            .data!;

                                                                    return Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final onboardingTeamList =
                                                                            (listViewTeamsListResponse.jsonBody.toList().map<OnboargingTeamStruct?>(OnboargingTeamStruct.maybeFromMap).toList() as Iterable<OnboargingTeamStruct?>).withoutNulls.toList() ??
                                                                                [];
                                                                        if (onboardingTeamList
                                                                            .isEmpty) {
                                                                          return Image
                                                                              .asset(
                                                                            'assets/images/edv.jpg',
                                                                          );
                                                                        }

                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              onboardingTeamList.length,
                                                                          itemBuilder:
                                                                              (context, onboardingTeamListIndex) {
                                                                            final onboardingTeamListItem =
                                                                                onboardingTeamList[onboardingTeamListIndex];
                                                                            return Card(
                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              elevation: 4.0,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  onboardingTeamListItem.name,
                                                                                                  '?',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      fontSize: 11.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                onboardingTeamListItem.checkinAt,
                                                                                                textAlign: TextAlign.end,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      fontSize: 11.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  onboardingTeamListItem.profile,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      fontSize: 11.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontStyle: FontStyle.italic,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                onboardingTeamListItem.checkinOut,
                                                                                                textAlign: TextAlign.end,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      fontSize: 11.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          _model.apiResult5qc = await OnBoardingGroup.teamsCheckOutCall.call(
                                                                                            jwt: currentAuthenticationToken,
                                                                                            teamId: onboardingTeamListItem.registredTeamId,
                                                                                          );

                                                                                          if ((_model.apiResult5qc?.succeeded ?? true)) {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return AlertDialog(
                                                                                                  title: const Text('Checkout'),
                                                                                                  content: const Text('Membro da equipe saiu da operação'),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                      child: const Text('Ok'),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          } else {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return AlertDialog(
                                                                                                  title: const Text('ERRO'),
                                                                                                  content: const Text('Ocorreu algum erro no backend'),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                      child: const Text('Ok'),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          }

                                                                                          setState(() {});
                                                                                        },
                                                                                        text: 'Checkout',
                                                                                        options: FFButtonOptions(
                                                                                          height: 40.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Inter',
                                                                                                color: Colors.white,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: const BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
      },
    );
  }
}
