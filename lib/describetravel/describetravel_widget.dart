import '/components/customtrees_widget.dart';
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
import 'describetravel_model.dart';
export 'describetravel_model.dart';

class DescribetravelWidget extends StatefulWidget {
  const DescribetravelWidget({
    super.key,
    this.footprintfromprevpage,
    this.country,
  });

  final double? footprintfromprevpage;
  final String? country;

  @override
  State<DescribetravelWidget> createState() => _DescribetravelWidgetState();
}

class _DescribetravelWidgetState extends State<DescribetravelWidget>
    with TickerProviderStateMixin {
  late DescribetravelModel _model;

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
    _model = createModel(context, () => DescribetravelModel());

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
        title: 'describetravel',
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
                                            _model.radioButtonValue3 == '') &&
                                        (_model.radioButtonValue4 == null ||
                                            _model.radioButtonValue4 == '')
                                    ? widget.footprintfromprevpage?.toString()
                                    : FFAppState().currentPageValue.toString(),
                                '1.78',
                              ).maybeHandleOverflow(maxChars: 5),
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
                                      _model.radioButtonValueController4
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
                                            '    💺    I rarely or never travel                                                   '
                                          ].toList(),
                                          onChanged: (val) async {
                                            setState(() {});
                                            setState(() {
                                              _model.radioButtonValueController2
                                                  ?.reset();
                                              _model.radioButtonValueController3
                                                  ?.reset();
                                              _model.radioButtonValueController4
                                                  ?.reset();
                                            });
                                            _model.result1 = await actions
                                                .addTwoDoubleNumbers(
                                              widget.footprintfromprevpage! >
                                                      16.0
                                                  ? -2.1
                                                  : 1.1,
                                              widget.footprintfromprevpage,
                                            );
                                            setState(() {
                                              FFAppState().currentPageValue =
                                                  _model.result1!;
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
                                        if (_model.radioButtonValue1 != null &&
                                            _model.radioButtonValue1 != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    7.0, 2.0, 7.0, 2.0),
                                            child: Text(
                                              'This assumes 1 short-range trip per year.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 13.0,
                                                      ),
                                            ),
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
                                          '       🛩️    Occasionally                                                                     '
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          setState(() {
                                            _model.radioButtonValueController3
                                                ?.reset();
                                            _model.radioButtonValueController4
                                                ?.reset();
                                            _model.radioButtonValueController1
                                                ?.reset();
                                          });
                                          _model.result2 =
                                              await actions.addTwoDoubleNumbers(
                                            6.6,
                                            widget.footprintfromprevpage,
                                          );
                                          setState(() {
                                            FFAppState().currentPageValue =
                                                _model.result2!;
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
                                      if (_model.radioButtonValue2 != null &&
                                          _model.radioButtonValue2 != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 2.0, 7.0, 2.0),
                                          child: Text(
                                            'This assumes one mid-range or two short-range flights per year.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 13.0,
                                                ),
                                          ),
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
                                          '        🛬   Regularly                                                                            '
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          setState(() {
                                            _model.radioButtonValueController2
                                                ?.reset();
                                            _model.radioButtonValueController4
                                                ?.reset();
                                            _model.radioButtonValueController1
                                                ?.reset();
                                          });
                                          _model.result3 =
                                              await actions.addTwoDoubleNumbers(
                                            10.2,
                                            widget.footprintfromprevpage,
                                          );
                                          setState(() {
                                            FFAppState().currentPageValue =
                                                _model.result3!;
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
                                      if (_model.radioButtonValue3 != null &&
                                          _model.radioButtonValue3 != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 2.0, 7.0, 2.0),
                                          child: Text(
                                            'This assumes one long-range or two mid-range flights per year.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 13.0,
                                                ),
                                          ),
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
                                          '         📝  Enter a custom value                                                  '
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          setState(() {
                                            _model.radioButtonValueController2
                                                ?.reset();
                                            _model.radioButtonValueController3
                                                ?.reset();
                                            _model.radioButtonValueController1
                                                ?.reset();
                                          });
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            isDismissible: false,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: CustomtreesWidget(
                                                    valuefrompreviuspage: widget
                                                        .footprintfromprevpage,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        controller: _model
                                                .radioButtonValueController4 ??=
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
                                      if (_model.radioButtonValue4 != null &&
                                          _model.radioButtonValue4 != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 2.0, 7.0, 2.0),
                                          child: Text(
                                            'You have selected a custom number of flights.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 13.0,
                                                ),
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
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 3.0, 1.0, 10.0),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'which best describes ',
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
                                        text: 'your flying habbits ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'in anaverage year.',
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
                          '1/8',
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
                                    _model.radioButtonValue3 != '') ||
                                (_model.radioButtonValue4 != null &&
                                    _model.radioButtonValue4 != ''))
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
                                    _model.radioButtonValueController4?.reset();
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
                                    _model.radioButtonValue3 == '') &&
                                (_model.radioButtonValue4 == null ||
                                    _model.radioButtonValue4 == ''))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'describeFuel',
                                    queryParameters: {
                                      'footprintfrompreviouspage':
                                          serializeParam(
                                        FFAppState().currentPageValue == null
                                            ? widget.footprintfromprevpage
                                            : widget.footprintfromprevpage,
                                        ParamType.double,
                                      ),
                                    }.withoutNulls,
                                  );
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
                                _model.radioButtonValue3 != '') ||
                            (_model.radioButtonValue4 != null &&
                                _model.radioButtonValue4 != ''))
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'describeFuel',
                                queryParameters: {
                                  'footprintfrompreviouspage': serializeParam(
                                    FFAppState().currentPageValue,
                                    ParamType.double,
                                  ),
                                }.withoutNulls,
                              );
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
