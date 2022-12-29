import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserPostAddWidget extends StatefulWidget {
  const UserPostAddWidget({Key? key}) : super(key: key);

  @override
  _UserPostAddWidgetState createState() => _UserPostAddWidgetState();
}

class _UserPostAddWidgetState extends State<UserPostAddWidget> {
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        child: Image.asset(
                          'assets/images/logo2.png',
                          width: 100,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.userAlt,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    '상담글 올리기',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 3, 0),
                                  child: Text(
                                    '사연유형',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'NotoSansKR',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Text(
                                  '(어떤 사연 이신가요?)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        fontSize: 18,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: Text(
                              '궁금한 내용을 남겨주시면, 내용에 근거하여 관련 전문가가 의견을 남겨드립니다.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xFFA2A9AF),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      FFAppState().update(() {
                                        FFAppState().userPostAdd = '가정문제';
                                      });
                                    },
                                    child: Container(
                                      width: 160,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color:
                                            FFAppState().userPostAdd == '가정문제'
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryColor
                                                : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color:
                                              FFAppState().userPostAdd == '가정문제'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : Color(0xFFB0B7BE),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 7, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.checkCircle,
                                                color:
                                                    FFAppState().userPostAdd ==
                                                            '가정문제'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              '가정문제',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: FFAppState()
                                                                .userPostAdd ==
                                                            '가정문제'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      FFAppState().userPostAdd = '기업문제';
                                    });
                                  },
                                  child: Container(
                                    width: 160,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FFAppState().userPostAdd == '기업문제'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color:
                                            FFAppState().userPostAdd == '기업문제'
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryColor
                                                : Color(0xFFB0B7BE),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 7, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.checkCircle,
                                              color: FFAppState().userPostAdd ==
                                                      '기업문제'
                                                  ? Colors.white
                                                  : Color(0xFFB0B7BE),
                                              size: 24,
                                            ),
                                          ),
                                          Text(
                                            '기업문제',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: FFAppState()
                                                              .userPostAdd ==
                                                          '기업문제'
                                                      ? Colors.white
                                                      : Color(0xFFB0B7BE),
                                                  fontSize: 18,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      FFAppState().update(() {
                                        FFAppState().userPostAdd = '채권문제';
                                      });
                                    },
                                    child: Container(
                                      width: 160,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color:
                                            FFAppState().userPostAdd == '채권문제'
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryColor
                                                : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color:
                                              FFAppState().userPostAdd == '채권문제'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : Color(0xFFB0B7BE),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 7, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.checkCircle,
                                                color:
                                                    FFAppState().userPostAdd ==
                                                            '채권문제'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              '채권문제',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: FFAppState()
                                                                .userPostAdd ==
                                                            '채권문제'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      FFAppState().userPostAdd = '사기';
                                    });
                                  },
                                  child: Container(
                                    width: 160,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FFAppState().userPostAdd == '사기'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: FFAppState().userPostAdd == '사기'
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Color(0xFFB0B7BE),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 7, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.checkCircle,
                                              color: FFAppState().userPostAdd ==
                                                      '사기'
                                                  ? Colors.white
                                                  : Color(0xFFB0B7BE),
                                              size: 24,
                                            ),
                                          ),
                                          Text(
                                            '사기',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: FFAppState()
                                                              .userPostAdd ==
                                                          '사기'
                                                      ? Colors.white
                                                      : Color(0xFFB0B7BE),
                                                  fontSize: 18,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      FFAppState().update(() {
                                        FFAppState().userPostAdd = '스토킹';
                                      });
                                    },
                                    child: Container(
                                      width: 160,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FFAppState().userPostAdd == '스토킹'
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color:
                                              FFAppState().userPostAdd == '스토킹'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : Color(0xFFB0B7BE),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 7, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.checkCircle,
                                                color:
                                                    FFAppState().userPostAdd ==
                                                            '스토킹'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              '스토킹',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: FFAppState()
                                                                .userPostAdd ==
                                                            '스토킹'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      FFAppState().userPostAdd = '사람찾기';
                                    });
                                  },
                                  child: Container(
                                    width: 160,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FFAppState().userPostAdd == '사람찾기'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color:
                                            FFAppState().userPostAdd == '사람찾기'
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryColor
                                                : Color(0xFFB0B7BE),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 7, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.checkCircle,
                                              color: FFAppState().userPostAdd ==
                                                      '사람찾기'
                                                  ? Colors.white
                                                  : Color(0xFFB0B7BE),
                                              size: 24,
                                            ),
                                          ),
                                          Text(
                                            '사람찾기',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: FFAppState()
                                                              .userPostAdd ==
                                                          '사람찾기'
                                                      ? Colors.white
                                                      : Color(0xFFB0B7BE),
                                                  fontSize: 18,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      FFAppState().update(() {
                                        FFAppState().userPostAdd = '기타';
                                      });
                                    },
                                    child: Container(
                                      width: 160,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FFAppState().userPostAdd == '기타'
                                            ? FlutterFlowTheme.of(context)
                                                .primaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color:
                                              FFAppState().userPostAdd == '기타'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryColor
                                                  : Color(0xFFB0B7BE),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 7, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.checkCircle,
                                                color:
                                                    FFAppState().userPostAdd ==
                                                            '기타'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              '기타',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: FFAppState()
                                                                .userPostAdd ==
                                                            '기타'
                                                        ? Colors.white
                                                        : Color(0xFFB0B7BE),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
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
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 5),
                          child: Text(
                            '사연작성',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'NotoSansKR',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 235,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xFFB0B7BE),
                            ),
                          ),
                          child: TextFormField(
                            controller: textController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '사람이나 지역을 특정할 수 있는 내용은 제외하고작성바랍니다.',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xFFB0B7BE),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFF393F41),
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                            maxLines: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
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
                            '사연 글 업로드',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: Text(
                    '내가 쓴 사연글 보기',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'NotoSansKR',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          useGoogleFonts: false,
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
