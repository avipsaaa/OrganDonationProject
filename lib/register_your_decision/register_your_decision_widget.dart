import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterYourDecisionWidget extends StatefulWidget {
  const RegisterYourDecisionWidget({Key key}) : super(key: key);

  @override
  _RegisterYourDecisionWidgetState createState() =>
      _RegisterYourDecisionWidgetState();
}

class _RegisterYourDecisionWidgetState
    extends State<RegisterYourDecisionWidget> {
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
          'Register your decision',
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
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/registerToDonate.jpg',
                    width: double.infinity,
                    height: 370,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Before you start',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Nunito',
                                  color: Colors.black,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Whatever you decide, please talk to your loved ones. They will always be consulted, and can overturn your decision if they aren\'t sure what you want. \nOrgan donation in some parts of the Nepal has changed. See how the changes affect you. \nWithdrawing your name from the Afterlife Organ Donor Registration is not the same as recording a decision not to donate.',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF161819),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Donate');
                                },
                                text: 'Donate',
                                icon: Icon(
                                  Icons.check_circle_outline_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 70,
                                  color: Color(0xFF166F32),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Colors.white,
                                      ),
                                  elevation: 4,
                                  borderSide: BorderSide(
                                    color: Color(0xFF166F32),
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: StreamBuilder<List<DonorsRecord>>(
                                stream: queryDonorsRecord(
                                  queryBuilder: (donorsRecord) =>
                                      donorsRecord.where('donor_email',
                                          isEqualTo: currentUserEmail),
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitFadingCube(
                                          color: Color(0xFF880707),
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<DonorsRecord>
                                      buttonWithdrawDonorsRecordList =
                                      snapshot.data;
                                  // Return an empty Container when the document does not exist.
                                  if (snapshot.data.isEmpty) {
                                    return Container();
                                  }
                                  final buttonWithdrawDonorsRecord =
                                      buttonWithdrawDonorsRecordList.isNotEmpty
                                          ? buttonWithdrawDonorsRecordList.first
                                          : null;
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('Withdraw');
                                    },
                                    text: 'Withdraw',
                                    icon: Icon(
                                      Icons.logout,
                                      size: 20,
                                    ),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 70,
                                      color: Color(0xFFA9003E),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                          ),
                                      elevation: 4,
                                      borderSide: BorderSide(
                                        color: Color(0xFFA9003E),
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  );
                                },
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
        ),
      ),
    );
  }
}
