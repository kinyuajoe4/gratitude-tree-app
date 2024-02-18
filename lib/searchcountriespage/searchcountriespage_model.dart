import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/testfield_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'searchcountriespage_widget.dart' show SearchcountriespageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class SearchcountriespageModel
    extends FlutterFlowModel<SearchcountriespageWidget> {
  ///  Local state fields for this page.

  List<String> countries = [];
  void addToCountries(String item) => countries.add(item);
  void removeFromCountries(String item) => countries.remove(item);
  void removeAtIndexFromCountries(int index) => countries.removeAt(index);
  void insertAtIndexInCountries(int index, String item) =>
      countries.insert(index, item);
  void updateCountriesAtIndex(int index, Function(String) updateFn) =>
      countries[index] = updateFn(countries[index]);

  bool isLIstFull = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  List<CountriesRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
