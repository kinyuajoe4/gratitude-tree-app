import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/locationcomp_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carbon_calculator_model.dart';
export 'carbon_calculator_model.dart';

class CarbonCalculatorWidget extends StatefulWidget {
  const CarbonCalculatorWidget({super.key});

  @override
  State<CarbonCalculatorWidget> createState() => _CarbonCalculatorWidgetState();
}

class _CarbonCalculatorWidgetState extends State<CarbonCalculatorWidget> {
  late CarbonCalculatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarbonCalculatorModel());

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
        title: 'CarbonCalculator',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF026B2F),
              automaticallyImplyLeading: true,
              title: Text(
                'Carbon Footprint Calculator',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 20.0,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          'carbon absorbed and other tree metrics',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF0C8D00),
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Metrics',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          height: 300.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: StreamBuilder<List<MytreesRecord>>(
                            stream: queryMytreesRecord(
                              queryBuilder: (mytreesRecord) => mytreesRecord
                                  .where(
                                    'tree_Owner',
                                    isEqualTo: currentUserReference,
                                  )
                                  .orderBy('next_Visit', descending: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 42.0,
                                    height: 42.0,
                                    child: SpinKitCircle(
                                      color: Color(0xFF2EFB26),
                                      size: 42.0,
                                    ),
                                  ),
                                );
                              }
                              List<MytreesRecord> dataTableMytreesRecordList =
                                  snapshot.data!;
                              if (dataTableMytreesRecordList.isEmpty) {
                                return EmptyListWidget();
                              }
                              return DataTable2(
                                columns: [
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        'Name',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge,
                                      ),
                                    ),
                                  ),
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        'Age',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge,
                                      ),
                                    ),
                                  ),
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        'carbon ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge,
                                      ),
                                    ),
                                  ),
                                ],
                                rows: dataTableMytreesRecordList
                                    .mapIndexed((dataTableIndex,
                                            dataTableMytreesRecord) =>
                                        [
                                          Text(
                                            valueOrDefault<String>(
                                              dataTableMytreesRecord.treeName,
                                              'not set',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              dataTableMytreesRecord.ageinMths
                                                  .toString(),
                                              '0',
                                            ).maybeHandleOverflow(maxChars: 3),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                          Text(
                                            dataTableMytreesRecord
                                                .carbonabsorbed
                                                .toString()
                                                .maybeHandleOverflow(
                                                    maxChars: 4),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ].map((c) => DataCell(c)).toList())
                                    .map((e) => DataRow(cells: e))
                                    .toList(),
                                headingRowColor: MaterialStateProperty.all(
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                headingRowHeight: 56.0,
                                dataRowColor: MaterialStateProperty.all(
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                dataRowHeight: 56.0,
                                border: TableBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                dividerThickness: 1.0,
                                showBottomBorder: true,
                                minWidth: 49.0,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 0.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ' metrics',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: Text(
                              'Location  metrics',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              height: 430.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: StreamBuilder<List<MytreesRecord>>(
                                stream: queryMytreesRecord(
                                  queryBuilder: (mytreesRecord) => mytreesRecord
                                      .where(
                                        'tree_Owner',
                                        isEqualTo: currentUserReference,
                                      )
                                      .orderBy('next_Visit', descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 42.0,
                                        height: 42.0,
                                        child: SpinKitCircle(
                                          color: Color(0xFF2EFB26),
                                          size: 42.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<MytreesRecord>
                                      googleMapMytreesRecordList =
                                      snapshot.data!;
                                  return FlutterFlowGoogleMap(
                                    controller: _model.googleMapsController,
                                    onCameraIdle: (latLng) => setState(
                                        () => _model.googleMapsCenter = latLng),
                                    initialLocation: _model.googleMapsCenter ??=
                                        LatLng(1.2921, 36.8219),
                                    markers: googleMapMytreesRecordList
                                        .map(
                                          (googleMapMytreesRecord) =>
                                              FlutterFlowMarker(
                                            googleMapMytreesRecord
                                                .reference.path,
                                            googleMapMytreesRecord
                                                .latitudeLongitude!,
                                            () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: LocationcompWidget(
                                                        treeLocationLatlong:
                                                            googleMapMytreesRecord
                                                                .latitudeLongitude,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        )
                                        .toList(),
                                    markerColor: GoogleMarkerColor.red,
                                    mapType: MapType.normal,
                                    style: GoogleMapStyle.standard,
                                    initialZoom: 3.0,
                                    allowInteraction: true,
                                    allowZoom: true,
                                    showZoomControls: true,
                                    showLocation: true,
                                    showCompass: true,
                                    showMapToolbar: true,
                                    showTraffic: false,
                                    centerMapOnMarkerTap: true,
                                  );
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Hel',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
