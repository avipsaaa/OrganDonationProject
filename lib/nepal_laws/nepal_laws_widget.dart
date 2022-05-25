import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NepalLawsWidget extends StatefulWidget {
  const NepalLawsWidget({Key key}) : super(key: key);

  @override
  _NepalLawsWidgetState createState() => _NepalLawsWidgetState();
}

class _NepalLawsWidgetState extends State<NepalLawsWidget> {
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
          'Nepal Laws',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/nepalLaws.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Criteria for organ donation in Nepal',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Nunito',
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        'Organ donation is done as per the Human Body Organ Transplant Act, 1998; its amendment in 2016; and its regulation issued in 2016. These laws cover all medico-legal aspects of organ/tissue transplantation. As per the act, the buying and selling of organs is a punishable offence with both fines and imprisonment.',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Criteria for live liver donation',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Nunito',
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        'The donor should meet the following criteria:',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          '• Age: 18-50 years\n• Sex: Any sex\n• Matching blood group\n• Family members\n• No pregnancy\n• No evidence of any liver disease\n• Remnant volume in CT scan >30%\n• Liver attenuation index (CT scan) >+5',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Criteria for live kidney and pancreas donation',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Nunito',
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        'The criteria for live kidney and pancreas donation in Nepal are quite complex. Doctors at transplantation centres can guide you about the process.',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Criteria for organ donation after brain death',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Nunito',
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        'All people should consider themselves as possible organ donors after brain death irrespective of age, health and race. No individual is too old or too young to be a deceased donor.',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          '• Declaration of the brain death.\n• Information sent to the transplant coordination unit.\n• A team of transplant coordinator, surgeons, anesthesiologists, nurses and other supportive staff mobilised.\n• Transplant coordinators and doctors counselling the patient’s relative for organ donation and performing necessary investigation.\n• A written consent taken from the family member.\n• The donor taken to the operation theatre and the organ harvested.\n• The donor’s body handed over to the donor family.\n• Recipient counselling and organ allocation.\n• Organ procurement, preservation and transport.\n• Necessary documentation and organ transplantation.',
                          style: FlutterFlowTheme.of(context).bodyText1,
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
    );
  }
}
