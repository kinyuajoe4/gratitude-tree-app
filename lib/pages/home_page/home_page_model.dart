import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/disp1_widget.dart';
import '/components/disp2_copy_widget.dart';
import '/components/disp2_widget.dart';
import '/components/disp3/disp3_widget.dart';
import '/components/disp5_widget.dart';
import '/components/disp6_widget.dart';
import '/components/editfielddetails_widget.dart';
import '/components/empty_list2_widget.dart';
import '/components/fieldor_trees_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for disp5 component.
  late Disp5Model disp5Model;
  // Model for disp6 component.
  late Disp6Model disp6Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    disp5Model = createModel(context, () => Disp5Model());
    disp6Model = createModel(context, () => Disp6Model());
  }

  @override
  void dispose() {
    disp5Model.dispose();
    disp6Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
