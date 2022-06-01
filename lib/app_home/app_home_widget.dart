import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHomeWidget extends StatefulWidget {
  const AppHomeWidget({Key key}) : super(key: key);

  @override
  _AppHomeWidgetState createState() => _AppHomeWidgetState();
}

class _AppHomeWidgetState extends State<AppHomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      if ((valueOrDefault(currentUserDocument?.role, '')) == 'admin') {
        context.pushNamed('AdminPage');
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFB80000),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.dehaze_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Home',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 18,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.person_rounded,
                      color: Color(0xFFC3C3C3),
                      size: 60,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Hi,',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Nunito',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: AuthUserStreamWidget(
                        child: Text(
                          valueOrDefault<String>(
                            currentUserDisplayName,
                            'Guest User',
                          ),
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Nunito',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 40,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Color(0xFFC5C5C5),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'What would you like to do?',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('HelpingYouDecide');
                            },
                            text: 'Helping you decide',
                            options: FFButtonOptions(
                              width: 130,
                              height: 70,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFB80000),
                                  ),
                              elevation: 4,
                              borderSide: BorderSide(
                                color: Color(0xFFB80000),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('TalkToYourLovedOnes');
                            },
                            text: 'Talk to you loved ones',
                            options: FFButtonOptions(
                              width: 130,
                              height: 70,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFB80000),
                                  ),
                              elevation: 4,
                              borderSide: BorderSide(
                                color: Color(0xFFB80000),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('NepalLaws');
                            },
                            text: 'Nepal Laws',
                            options: FFButtonOptions(
                              width: 130,
                              height: 70,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFB80000),
                                  ),
                              elevation: 4,
                              borderSide: BorderSide(
                                color: Color(0xFFB80000),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('BecomingALivingDonor');
                            },
                            text: 'Becoming a living donor',
                            options: FFButtonOptions(
                              width: 130,
                              height: 70,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFB80000),
                                  ),
                              elevation: 4,
                              borderSide: BorderSide(
                                color: Color(0xFFB80000),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (currentUserEmailVerified) {
                                context.pushNamed('RegisterYourDecision');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Please login and verify your email to continue!',
                                      style: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Colors.black,
                                    action: SnackBarAction(
                                      label: 'Login',
                                      textColor: Colors.white,
                                      onPressed: () async {
                                        context.pushNamed('Login');
                                      },
                                    ),
                                  ),
                                );
                              }
                            },
                            text: 'Register your decision',
                            options: FFButtonOptions(
                              width: 130,
                              height: 70,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFB80000),
                                  ),
                              elevation: 4,
                              borderSide: BorderSide(
                                color: Color(0xFFB80000),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('KnowAboutUs');
                            },
                            text: 'Know about us',
                            options: FFButtonOptions(
                              width: 130,
                              height: 70,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFFB80000),
                                  ),
                              elevation: 4,
                              borderSide: BorderSide(
                                color: Color(0xFFB80000),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
