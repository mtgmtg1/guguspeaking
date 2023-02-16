import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_model.dart';
export 'bottom_model.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({
    Key? key,
    this.title,
    this.txt,
  }) : super(key: key);

  final String? title;
  final String? txt;

  @override
  _BottomWidgetState createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  late BottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomModel());

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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(33, 33, 33, 33),
            child: Text(
              FFLocalizations.of(context).getText(
                'sk7csitk' /* Hello World */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'svdgz2t5' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(33, 33, 33, 33),
            child: FFButtonWidget(
              onPressed: () async {
                context.pop();
              },
              text: FFLocalizations.of(context).getText(
                'luf78u8g' /* 확인 */,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                      color: Colors.white,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).subtitle2Family),
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
