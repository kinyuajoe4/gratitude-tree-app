import '/backend/backend.dart';
import '/components/fields_location_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mapsfield_model.dart';
export 'mapsfield_model.dart';

class MapsfieldWidget extends StatefulWidget {
  const MapsfieldWidget({super.key});

  @override
  State<MapsfieldWidget> createState() => _MapsfieldWidgetState();
}

class _MapsfieldWidgetState extends State<MapsfieldWidget> {
  late MapsfieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapsfieldModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: StreamBuilder<List<FielddetailsRecord>>(
              stream: queryFielddetailsRecord(),
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
                List<FielddetailsRecord> googleMapFielddetailsRecordList =
                    snapshot.data!;
                return FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                  initialLocation: _model.googleMapsCenter ??=
                      LatLng(0.0236, 37.9062),
                  markers: googleMapFielddetailsRecordList
                      .map(
                        (googleMapFielddetailsRecord) => FlutterFlowMarker(
                          googleMapFielddetailsRecord.reference.path,
                          googleMapFielddetailsRecord.location!,
                          () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: Container(
                                    height: 200.0,
                                    child: FieldsLocationWidget(
                                      fieldlocation:
                                          googleMapFielddetailsRecord.location,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                        ),
                      )
                      .toList(),
                  markerColor: GoogleMarkerColor.violet,
                  mapType: MapType.normal,
                  style: GoogleMapStyle.standard,
                  initialZoom: 5.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: true,
                  showMapToolbar: false,
                  showTraffic: false,
                  centerMapOnMarkerTap: true,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(7.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Our fields',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF1D1F24),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
