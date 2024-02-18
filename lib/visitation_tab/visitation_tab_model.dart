import '/components/monitor_temp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'visitation_tab_widget.dart' show VisitationTabWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisitationTabModel extends FlutterFlowModel<VisitationTabWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for monitorTemp component.
  late MonitorTempModel monitorTempModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    monitorTempModel = createModel(context, () => MonitorTempModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    monitorTempModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
