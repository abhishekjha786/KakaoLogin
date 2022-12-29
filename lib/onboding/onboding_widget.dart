import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnbodingWidget extends StatefulWidget {
  const OnbodingWidget({Key? key}) : super(key: key);

  @override
  _OnbodingWidgetState createState() => _OnbodingWidgetState();
}

class _OnbodingWidgetState extends State<OnbodingWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                        child: InkWell(
                          onTap: () async {
                            context.pop();
                          },
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: Color(0xFFB0B7BE),
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Image.asset(
                      'assets/images/logo2.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: Text(
                    '회원 유형을 선택해주세요.',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          color: Color(0xFF211513),
                          fontSize: 18,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().signupOnbording = true;
                          });
                        },
                        child: Container(
                          width: 175,
                          height: 175,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: () {
                                if (FFAppState().signupOnbording) {
                                  return FlutterFlowTheme.of(context)
                                      .primaryColor;
                                } else if (!FFAppState().signupOnbording) {
                                  return Color(0xFFBDC5D2);
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 18),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Icon(
                                    Icons.check_circle_outline,
                                    color: FFAppState().signupOnbording
                                        ? FlutterFlowTheme.of(context)
                                            .primaryColor
                                        : Color(0xFFBDC5D2),
                                    size: 60,
                                  ),
                                ),
                                Text(
                                  '탐정',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        color: FFAppState().signupOnbording
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Color(0xFFBDC5D2),
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Text(
                                  '회원가입',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        color: FFAppState().signupOnbording
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Color(0xFFBDC5D2),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          FFAppState().update(() {
                            FFAppState().signupOnbording = false;
                          });
                        },
                        child: Container(
                          width: 175,
                          height: 175,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: !FFAppState().signupOnbording
                                  ? FlutterFlowTheme.of(context).primaryColor
                                  : Color(0xFFBDC5D2),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 18),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Icon(
                                    Icons.check_circle_outline,
                                    color: !FFAppState().signupOnbording
                                        ? FlutterFlowTheme.of(context)
                                            .primaryColor
                                        : Color(0xFFBDC5D2),
                                    size: 60,
                                  ),
                                ),
                                Text(
                                  'User',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        color: !FFAppState().signupOnbording
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Color(0xFFBDC5D2),
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Text(
                                  'signUP',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        color: !FFAppState().signupOnbording
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Color(0xFFBDC5D2),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                  child: InkWell(
                    onTap: () async {
                      if (FFAppState().signupOnbording) {
                        context.pushNamed('Manager_signUp');
                      } else {
                        context.pushNamed('user_signUp');
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign UP',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    fontSize: 18,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
