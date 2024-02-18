import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/maps_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editfielddetails_model.dart';
export 'editfielddetails_model.dart';

class EditfielddetailsWidget extends StatefulWidget {
  const EditfielddetailsWidget({
    super.key,
    this.userProfile,
    this.location,
    this.fielddetails,
    this.treederails,
    this.fieldtrees,
  });

  final DocumentReference? userProfile;
  final FFPlace? location;
  final FielddetailsRecord? fielddetails;
  final DocumentReference? treederails;
  final MytreesRecord? fieldtrees;

  @override
  State<EditfielddetailsWidget> createState() => _EditfielddetailsWidgetState();
}

class _EditfielddetailsWidgetState extends State<EditfielddetailsWidget> {
  late EditfielddetailsModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditfielddetailsModel());

    _model.fieldnameController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.fielddetails?.fieldname,
      'field name',
    ));

    _model.totalnumoftreesController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.fielddetails?.numberoftrees?.toString(),
      'eg.123',
    ));
    _model.totalnumoftreesFocusNode ??= FocusNode();

    _model.sizeController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.fielddetails?.fieldsize,
      'eg. 2acres',
    ));
    _model.sizeFocusNode ??= FocusNode();

    _model.fieldownwerController ??= TextEditingController(text: 'Field Owner');
    _model.fieldownwerFocusNode ??= FocusNode();

    _model.locationController ??= TextEditingController(text: 'Location');
    _model.locationFocusNode ??= FocusNode();

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(currentUserReference!),
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
            final columnUsersRecord = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 3.0,
                    indent: 150.0,
                    endIndent: 150.0,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Field Details',
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Fill out the information below about your field.',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Autocomplete<String>(
                      initialValue: TextEditingValue(
                          text: valueOrDefault<String>(
                        widget.fielddetails?.fieldname,
                        'field name',
                      )),
                      optionsBuilder: (textEditingValue) {
                        if (textEditingValue.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return [
                          'Eucalyptus',
                          'Pine',
                          'Cedar',
                          'Red Pine',
                          'Baobab',
                          'Moringa',
                          'Cypress',
                          'Palm',
                          'Plam Tree',
                          'Ovacado',
                          'Passion Tree',
                          'Bottle Brush',
                          'Ponderosa Pine',
                          'Mango',
                          'Markhamia lutea',
                          'Grevillea robusta',
                          'Grevillea robusta',
                          'Grafted avocado',
                          'Prunus africana',
                          'Podo',
                          'Tamarillo'
                        ].where((option) {
                          final lowercaseOption = option.toLowerCase();
                          return lowercaseOption
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      optionsViewBuilder: (context, onSelected, options) {
                        return AutocompleteOptionsList(
                          textFieldKey: _model.fieldnameKey,
                          textController: _model.fieldnameController!,
                          options: options.toList(),
                          onSelected: onSelected,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          textHighlightStyle: TextStyle(),
                          elevation: 4.0,
                          optionBackgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          optionHighlightColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          maxHeight: 200.0,
                        );
                      },
                      onSelected: (String selection) {
                        setState(
                            () => _model.fieldnameSelectedOption = selection);
                        FocusScope.of(context).unfocus();
                      },
                      fieldViewBuilder: (
                        context,
                        textEditingController,
                        focusNode,
                        onEditingComplete,
                      ) {
                        _model.fieldnameFocusNode = focusNode;

                        _model.fieldnameController = textEditingController;
                        return TextFormField(
                          key: _model.fieldnameKey,
                          controller: textEditingController,
                          focusNode: focusNode,
                          onEditingComplete: onEditingComplete,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Name of the Field',
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            hintText: 'Field Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF0C460A),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF235422),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF08FF00),
                                  ),
                          textAlign: TextAlign.start,
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          validator: _model.fieldnameControllerValidator
                              .asValidator(context),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.totalnumoftreesController,
                      focusNode: _model.totalnumoftreesFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Number of Trees Planted',
                        labelStyle: FlutterFlowTheme.of(context).bodySmall,
                        hintText: 'Number of Trees Planted',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF0C460A),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF0C460A),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF10FF00),
                          ),
                      textAlign: TextAlign.start,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator: _model.totalnumoftreesControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.sizeController,
                      focusNode: _model.sizeFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Field Size',
                        labelStyle: FlutterFlowTheme.of(context).bodySmall,
                        hintText: 'Age of Trees',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF0C460A),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF10FF00),
                          ),
                      textAlign: TextAlign.start,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator:
                          _model.sizeControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.fieldownwerController,
                      focusNode: _model.fieldownwerFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: valueOrDefault<String>(
                          widget.fielddetails?.fieldowner,
                          'name of ownwer',
                        ),
                        labelStyle: FlutterFlowTheme.of(context).bodySmall,
                        hintText: 'Age of Trees',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF0C460A),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF10FF00),
                          ),
                      textAlign: TextAlign.start,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator: _model.fieldownwerControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.locationController,
                      focusNode: _model.locationFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.locationController',
                        Duration(milliseconds: 2000),
                        () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height: 50.0,
                                  child: MapsBottomSheetWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: valueOrDefault<String>(
                          widget.fielddetails?.location?.toString(),
                          'eg. Nairobi',
                        ),
                        labelStyle: FlutterFlowTheme.of(context).bodySmall,
                        hintText: 'Location',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF0C460A),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF10FF00),
                          ),
                      textAlign: TextAlign.start,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator: _model.locationControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pop();
                          },
                          text: 'Cancel',
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).background,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            currentUserLocationValue =
                                await getCurrentUserLocation(
                                    defaultLocation: LatLng(0.0, 0.0));

                            await widget.fielddetails!.reference
                                .update(createFielddetailsRecordData(
                              fieldname: _model.fieldnameController.text,
                              fieldsize: _model.sizeController.text,
                              numberoftrees: int.tryParse(
                                  _model.totalnumoftreesController.text),
                              location: currentUserLocationValue,
                              fieldowner: _model.fieldownwerController.text,
                            ));
                            context.pop();
                          },
                          text: 'Update Field',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF25E31E),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StreamBuilder<List<MytreesRecord>>(
                          stream: queryMytreesRecord(
                            parent: widget.fielddetails?.reference,
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
                            List<MytreesRecord> buttonMytreesRecordList =
                                snapshot.data!;
                            return FFButtonWidget(
                              onPressed: () async {
                                if (widget.treederails?.id != null &&
                                    widget.treederails?.id != '') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'remove all the trees from field first',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 6000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                } else {
                                  await widget.fielddetails!.reference.delete();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'field removed successfully',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );

                                  context.pushNamed('homePage');
                                }
                              },
                              text: 'delete field',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFDF5E73),
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
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
