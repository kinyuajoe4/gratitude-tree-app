import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'describe_electricity_model.dart';
export 'describe_electricity_model.dart';

class DescribeElectricityWidget extends StatefulWidget {
  const DescribeElectricityWidget({
    super.key,
    this.footprintfrompreviouspage,
  });

  final double? footprintfrompreviouspage;

  @override
  State<DescribeElectricityWidget> createState() =>
      _DescribeElectricityWidgetState();
}

class _DescribeElectricityWidgetState extends State<DescribeElectricityWidget>
    with TickerProviderStateMixin {
  late DescribeElectricityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 100.ms,
          begin: Offset(0.0, -30.0),
          end: Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 600.ms,
          begin: Offset(6.283, 0),
          end: Offset(0, 0.349),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FlipEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 2.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(350.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 380.ms,
          duration: 970.ms,
          hz: 3,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescribeElectricityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'describeElectricity',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Container(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 170.0, 0.0, 0.0),
                          child: FlutterFlowVideoPlayer(
                            path: 'assets/videos/sample1.mp4',
                            videoType: VideoType.asset,
                            width: double.infinity,
                            height: double.infinity,
                            autoPlay: true,
                            looping: true,
                            showControls: false,
                            allowFullScreen: false,
                            allowPlaybackSpeedMenu: false,
                            pauseOnNavigate: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FlutterFlowVideoPlayer(
                    path: 'assets/videos/sample1.mp4',
                    videoType: VideoType.asset,
                    width: double.infinity,
                    height: double.infinity,
                    aspectRatio: 0.56,
                    autoPlay: true,
                    looping: true,
                    showControls: false,
                    allowFullScreen: false,
                    allowPlaybackSpeedMenu: false,
                    pauseOnNavigate: false,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 0.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SelectionArea(
                                child: AutoSizeText(
                              valueOrDefault<String>(
                                (_model.radioButtonValue1 == null ||
                                            _model.radioButtonValue1 == '') &&
                                        (_model.radioButtonValue2 == null ||
                                            _model.radioButtonValue2 == '') &&
                                        (_model.radioButtonValue3 == null ||
                                            _model.radioButtonValue3 == '')
                                    ? widget.footprintfrompreviouspage
                                        ?.toString()
                                    : FFAppState().currentPageValue.toString(),
                                '1.78',
                              ).maybeHandleOverflow(maxChars: 4),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF121213),
                                  ),
                            )).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation']!),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  3.0, 0.0, 0.0, 0.0),
                              child: RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Tons of CO',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF090B0B),
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: '2',
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 350.0, 8.0, 8.0),
                    child: Container(
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 5.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.radioButtonValueController2
                                          ?.reset();
                                      _model.radioButtonValueController3
                                          ?.reset();
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(12.0),
                                        topLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterFlowRadioButton(
                                          options: [
                                            '       🍃       Yes                                                                                   '
                                          ].toList(),
                                          onChanged: (val) async {
                                            setState(() {});
                                            setState(() {
                                              _model.radioButtonValueController2
                                                  ?.reset();
                                              _model.radioButtonValueController3
                                                  ?.reset();
                                            });
                                            _model.sum1 = await actions
                                                .addTwoDoubleNumbers(
                                              widget.footprintfrompreviouspage! <=
                                                      1.0
                                                  ? 3.98
                                                  : -1.02,
                                              widget.footprintfrompreviouspage,
                                            );
                                            setState(() {
                                              FFAppState().currentPageValue =
                                                  _model.sum1!;
                                            });

                                            setState(() {});
                                          },
                                          controller: _model
                                                  .radioButtonValueController1 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          selectedTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    fontSize: 14.0,
                                                  ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options: [
                                          '       😫    Not yet                                                                             '
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          setState(() {
                                            _model.radioButtonValueController3
                                                ?.reset();
                                            _model.radioButtonValueController1
                                                ?.reset();
                                          });
                                          _model.sum2 =
                                              await actions.addTwoDoubleNumbers(
                                            widget.footprintfrompreviouspage! <=
                                                    1.0
                                                ? 3.88
                                                : 1.52,
                                            widget.footprintfrompreviouspage,
                                          );
                                          setState(() {
                                            FFAppState().currentPageValue =
                                                _model.sum2!;
                                          });

                                          setState(() {});
                                        },
                                        controller: _model
                                                .radioButtonValueController2 ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              fontSize: 14.0,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options: [
                                          '        🤖     Not sure                                                                   '
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          setState(() {
                                            _model.radioButtonValueController2
                                                ?.reset();
                                            _model.radioButtonValueController1
                                                ?.reset();
                                          });
                                          _model.sum22 =
                                              await actions.addTwoDoubleNumbers(
                                            widget.footprintfrompreviouspage! <=
                                                    1.0
                                                ? 4.67
                                                : 2.62,
                                            widget.footprintfrompreviouspage,
                                          );
                                          setState(() {
                                            FFAppState().currentPageValue =
                                                _model.sum22!;
                                          });

                                          setState(() {});
                                        },
                                        controller: _model
                                                .radioButtonValueController3 ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              fontSize: 14.0,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 250.0, 8.0, 8.0),
                    child: Container(
                      width: 250.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 3.0, 1.0, 10.0),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Do you have ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                      TextSpan(
                                        text: ' renewable electricity ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'at home?',
                                        style: TextStyle(),
                                      )
                                    ],
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation2']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 790.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '8/8',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(70.0, 766.0, 45.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            if ((_model.radioButtonValue1 != null &&
                                    _model.radioButtonValue1 != '') ||
                                (_model.radioButtonValue2 != null &&
                                    _model.radioButtonValue2 != '') ||
                                (_model.radioButtonValue3 != null &&
                                    _model.radioButtonValue3 != ''))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    _model.radioButtonValueController1?.reset();
                                    _model.radioButtonValueController2?.reset();
                                    _model.radioButtonValueController3?.reset();
                                  });
                                },
                                child: Text(
                                  'Clear',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            if ((_model.radioButtonValue1 == null ||
                                    _model.radioButtonValue1 == '') &&
                                (_model.radioButtonValue2 == null ||
                                    _model.radioButtonValue2 == '') &&
                                (_model.radioButtonValue3 == null ||
                                    _model.radioButtonValue3 == ''))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.mul01 =
                                      await actions.multiplyTwoDoubleNumbers(
                                    0.2,
                                    FFAppState().currentPageValue,
                                  );
                                  _model.mul02 =
                                      await actions.multiplyTwoDoubleNumbers(
                                    0.4,
                                    FFAppState().currentPageValue,
                                  );
                                  _model.mul03 =
                                      await actions.multiplyTwoDoubleNumbers(
                                    0.4,
                                    FFAppState().currentPageValue,
                                  );
                                  _model.mul04 =
                                      await actions.multiplyTwoDoubleNumbers(
                                    0.25,
                                    FFAppState().currentPageValue,
                                  );
                                  _model.mul05 =
                                      await actions.multiplyTwoDoubleNumbers(
                                    0.35,
                                    FFAppState().currentPageValue,
                                  );

                                  context.pushNamed(
                                    'describefinal',
                                    queryParameters: {
                                      'footprintfrompreviospage':
                                          serializeParam(
                                        0.0,
                                        ParamType.double,
                                      ),
                                      'flying': serializeParam(
                                        _model.mul01,
                                        ParamType.double,
                                      ),
                                      'mobility': serializeParam(
                                        _model.mul02,
                                        ParamType.double,
                                      ),
                                      'housing': serializeParam(
                                        _model.mul03,
                                        ParamType.double,
                                      ),
                                      'diet': serializeParam(
                                        _model.mul04,
                                        ParamType.double,
                                      ),
                                      'spending': serializeParam(
                                        _model.mul05,
                                        ParamType.double,
                                      ),
                                    }.withoutNulls,
                                  );

                                  setState(() {});
                                },
                                child: Text(
                                  'Skip',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                          ],
                        ),
                        if ((_model.radioButtonValue1 != null &&
                                _model.radioButtonValue1 != '') ||
                            (_model.radioButtonValue2 != null &&
                                _model.radioButtonValue2 != '') ||
                            (_model.radioButtonValue3 != null &&
                                _model.radioButtonValue3 != ''))
                          FFButtonWidget(
                            onPressed: () async {
                              _model.mul11 =
                                  await actions.multiplyTwoDoubleNumbers(
                                0.2,
                                FFAppState().currentPageValue,
                              );
                              _model.mul22 =
                                  await actions.multiplyTwoDoubleNumbers(
                                0.4,
                                FFAppState().currentPageValue,
                              );
                              _model.mul33 =
                                  await actions.multiplyTwoDoubleNumbers(
                                0.4,
                                FFAppState().currentPageValue,
                              );
                              _model.mul44 =
                                  await actions.multiplyTwoDoubleNumbers(
                                0.25,
                                FFAppState().currentPageValue,
                              );
                              _model.mul55 =
                                  await actions.multiplyTwoDoubleNumbers(
                                0.35,
                                FFAppState().currentPageValue,
                              );

                              context.pushNamed(
                                'describefinal',
                                queryParameters: {
                                  'footprintfrompreviospage': serializeParam(
                                    FFAppState().currentPageValue,
                                    ParamType.double,
                                  ),
                                  'flying': serializeParam(
                                    _model.mul11,
                                    ParamType.double,
                                  ),
                                  'mobility': serializeParam(
                                    _model.mul22,
                                    ParamType.double,
                                  ),
                                  'housing': serializeParam(
                                    _model.mul33,
                                    ParamType.double,
                                  ),
                                  'diet': serializeParam(
                                    _model.mul44,
                                    ParamType.double,
                                  ),
                                  'spending': serializeParam(
                                    _model.mul55,
                                    ParamType.double,
                                  ),
                                }.withoutNulls,
                              );

                              setState(() {});
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).success,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
