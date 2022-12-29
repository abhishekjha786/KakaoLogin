import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomIndexWidget extends StatefulWidget {
  const BottomIndexWidget({Key? key}) : super(key: key);

  @override
  _BottomIndexWidgetState createState() => _BottomIndexWidgetState();
}

class _BottomIndexWidgetState extends State<BottomIndexWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Container(
                width: 50,
                height: 4,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).lineColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 40, 25, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '추천순',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          color: Color(0xFFB0B7BE),
                          fontSize: 18,
                          useGoogleFonts: false,
                        ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 15),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0xFFD5DBE1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '인기순',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          color: Color(0xFFB0B7BE),
                          fontSize: 18,
                          useGoogleFonts: false,
                        ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 15),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0xFFD5DBE1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '별점높은순',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          color: Color(0xFFB0B7BE),
                          fontSize: 18,
                          useGoogleFonts: false,
                        ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 15),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0xFFD5DBE1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '최신순',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          color: Color(0xFFB0B7BE),
                          fontSize: 18,
                          useGoogleFonts: false,
                        ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
