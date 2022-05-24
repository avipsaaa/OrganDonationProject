import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpingYouDecideWidget extends StatefulWidget {
  const HelpingYouDecideWidget({Key key}) : super(key: key);

  @override
  _HelpingYouDecideWidgetState createState() => _HelpingYouDecideWidgetState();
}

class _HelpingYouDecideWidgetState extends State<HelpingYouDecideWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF9D0000),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Helping you decide',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/hyd.jpg',
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'We understand that you may have questions about organ donation.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'We\'re here to help support your decision, and have provided a selection of resources to help make sure you get the information you need.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF161819),
                              fontSize: 14,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListTile(
                        title: Text(
                          'What can you donate?',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF161819),
                                    fontSize: 18,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListTile(
                        title: Text(
                          'Who can donate?',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF161819),
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListTile(
                        title: Text(
                          'Get the facts',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF161819),
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListTile(
                        title: Text(
                          'Living Donation',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF161819),
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListTile(
                        title: Text(
                          'Tissue Donation',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF161819),
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListTile(
                        title: Text(
                          'Understanding Consent',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF161819),
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
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
    );
  }
}
