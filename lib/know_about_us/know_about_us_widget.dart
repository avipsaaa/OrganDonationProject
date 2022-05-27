import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class KnowAboutUsWidget extends StatefulWidget {
  const KnowAboutUsWidget({Key key}) : super(key: key);

  @override
  _KnowAboutUsWidgetState createState() => _KnowAboutUsWidgetState();
}

class _KnowAboutUsWidgetState extends State<KnowAboutUsWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
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
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFB80000),
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
          'About Us',
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/employees.jpg',
                            width: double.infinity,
                            height: 280,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Who we are?',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'We are a special health authority dedicated to saving lives.\n\nWe provide a blood and transplantation service to the hospitals, looking after blood donation services in Kathmandu and transplant services across the Nepal. This includes managing the donation, storage and transplantation of blood, organs, tissues, bone marrow and stem cells, and researching new treatments and processes.',
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Text(
                                    'Our Mission',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 18,
                                        ),
                                  ),
                                  collapsed: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Our mission is to save and enhance the lives of others',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      ),
                                      Text(
                                        'We take pride in playing our part to make the most of  absolutely every donation. And, with the support of our amazing donors, we give a lifeline to thousands of people every year.\n\nBut there is always more to do. Which is why we continually strive to improve the safety, availability, quality and efficiency of our services.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Color(0x8A000000),
                                            ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: false,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Text(
                                    'Our Responsibilities',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 18,
                                        ),
                                  ),
                                  collapsed: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'The primary responsibilities of our organization are:',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Text(
                                          '• Encourage people to donate organs, blood, and tissues. \n• Optimise the safety and supply of blood, organs, and tissues and match them to patients with the help of the hospitals we work with. \n• Help to raise the quality, effectiveness and clinical outcomes of blood and transplant services in Nepal. \n• Commission and conduct research and development to improve outcomes for patients with the help of research centres and hospitals we work with.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Nunito',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: false,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Text(
                                    'Our Values',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 18,
                                        ),
                                  ),
                                  collapsed: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Caring | Expert | Quality',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      ),
                                      Text(
                                        'Our three core principles are critical to our service, guiding everything we do and inspiring us to be the best.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Color(0x8A000000),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Text(
                                          '• We care about our donors, their families, the patients we serve, and our people.\n• We are expert at meeting the needs of those who use our service and those who operate it.\n• We provide quality products, services and experiences for donors, patients and colleagues.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Nunito',
                                                color: Color(0x8A000000),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: false,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Contact Us',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                'General  enquiries:',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Nunito',
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                            Text(
                              'Phone: 9898 989 898\nTo use text relay, dial: 1615 9898989898\nTo use text chat, please SMS: 01-4444444\nEmail: support@afterlife.com.np',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    lineHeight: 1.5,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Head Office Address:',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Nunito',
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                            Text(
                              'Afterlife\nTrade Tower, Thapathali,\nKathmandu,\nBagmati,\nNepal',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    lineHeight: 1.5,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Container(
                                  width: 100,
                                  height: 350,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(0),
                                    border: Border.all(
                                      color: Color(0xFFE7E7E7),
                                      width: 1,
                                    ),
                                  ),
                                  child: StreamBuilder<List<LocationRecord>>(
                                    stream: queryLocationRecord(
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
                                      List<LocationRecord>
                                          googleMapLocationRecordList =
                                          snapshot.data;
                                      final googleMapLocationRecord =
                                          googleMapLocationRecordList.isNotEmpty
                                              ? googleMapLocationRecordList
                                                  .first
                                              : null;
                                      return FlutterFlowGoogleMap(
                                        controller: googleMapsController,
                                        onCameraIdle: (latLng) =>
                                            googleMapsCenter = latLng,
                                        initialLocation: googleMapsCenter ??=
                                            functions.getUsersLocation(
                                                currentUserLocationValue),
                                        markers: [
                                          if (googleMapLocationRecord != null)
                                            FlutterFlowMarker(
                                              googleMapLocationRecord
                                                  .reference.path,
                                              googleMapLocationRecord.location,
                                            ),
                                        ],
                                        markerColor: GoogleMarkerColor.red,
                                        mapType: MapType.normal,
                                        style: GoogleMapStyle.standard,
                                        initialZoom: 16,
                                        allowInteraction: true,
                                        allowZoom: true,
                                        showZoomControls: true,
                                        showLocation: true,
                                        showCompass: true,
                                        showMapToolbar: true,
                                        showTraffic: true,
                                        centerMapOnMarkerTap: true,
                                      );
                                    },
                                  ),
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
        ),
      ),
    );
  }
}
