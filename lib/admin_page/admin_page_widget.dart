import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPageWidget extends StatefulWidget {
  const AdminPageWidget({Key key}) : super(key: key);

  @override
  _AdminPageWidgetState createState() => _AdminPageWidgetState();
}

class _AdminPageWidgetState extends State<AdminPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            Icons.menu_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Administrator',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Nunito',
                color: Colors.white,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              GoRouter.of(context).prepareAuthEvent();
              await signOut();
              context.goNamedAuth('Login', mounted);
            },
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Color(0xFFB80000),
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle: FlutterFlowTheme.of(context).subtitle1,
                        indicatorColor: Color(0xFFB80000),
                        tabs: [
                          Tab(
                            text: 'Users',
                          ),
                          Tab(
                            text: 'Donors',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            StreamBuilder<List<UsersRecord>>(
                              stream: queryUsersRecord(),
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
                                List<UsersRecord> columnUsersUsersRecordList =
                                    snapshot.data
                                        .where((u) => u.uid != currentUserUid)
                                        .toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                        columnUsersUsersRecordList.length,
                                        (columnUsersIndex) {
                                      final columnUsersUsersRecord =
                                          columnUsersUsersRecordList[
                                              columnUsersIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 10),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF7F7F7),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Slidable(
                                              actionPane:
                                                  const SlidableScrollActionPane(),
                                              secondaryActions: [
                                                StreamBuilder<
                                                    List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    queryBuilder: (usersRecord) =>
                                                        usersRecord.where(
                                                            'email',
                                                            isEqualTo:
                                                                columnUsersUsersRecord
                                                                    .email),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              SpinKitFadingCube(
                                                            color: Color(
                                                                0xFF880707),
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        slidableActionWidgetUsersRecordList =
                                                        snapshot.data
                                                            .where((u) =>
                                                                u.uid !=
                                                                currentUserUid)
                                                            .toList();
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final slidableActionWidgetUsersRecord =
                                                        slidableActionWidgetUsersRecordList
                                                                .isNotEmpty
                                                            ? slidableActionWidgetUsersRecordList
                                                                .first
                                                            : null;
                                                    return IconSlideAction(
                                                      caption: 'Delete',
                                                      color: Color(0xFFB80000),
                                                      icon:
                                                          Icons.delete_forever,
                                                      onTap: () async {
                                                        await columnUsersUsersRecord
                                                            .reference
                                                            .delete();
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                              child: ListTile(
                                                title: Text(
                                                  columnUsersUsersRecord
                                                      .displayName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                                subtitle: Text(
                                                  columnUsersUsersRecord.email,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2,
                                                ),
                                                trailing: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xFF303030),
                                                  size: 20,
                                                ),
                                                tileColor: Color(0xFFF5F5F5),
                                                dense: false,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                            StreamBuilder<List<DonorsRecord>>(
                              stream: queryDonorsRecord(),
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
                                    columnDonorsDonorsRecordList =
                                    snapshot.data;
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                        columnDonorsDonorsRecordList.length,
                                        (columnDonorsIndex) {
                                      final columnDonorsDonorsRecord =
                                          columnDonorsDonorsRecordList[
                                              columnDonorsIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 10),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF7F7F7),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Slidable(
                                              actionPane:
                                                  const SlidableScrollActionPane(),
                                              secondaryActions: [
                                                StreamBuilder<
                                                    List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              SpinKitFadingCube(
                                                            color: Color(
                                                                0xFF880707),
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        slidableActionWidgetUsersRecordList =
                                                        snapshot.data;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final slidableActionWidgetUsersRecord =
                                                        slidableActionWidgetUsersRecordList
                                                                .isNotEmpty
                                                            ? slidableActionWidgetUsersRecordList
                                                                .first
                                                            : null;
                                                    return IconSlideAction(
                                                      caption: 'Verify',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor1,
                                                      icon: Icons
                                                          .verified_user_sharp,
                                                      onTap: () async {
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              'Donor Form Verification Status',
                                                          notificationText:
                                                              'Your donor form details have been verified.',
                                                          notificationSound:
                                                              'default',
                                                          userRefs: [
                                                            slidableActionWidgetUsersRecord
                                                                .reference
                                                          ],
                                                          initialPageName:
                                                              'AppHome',
                                                          parameterData: {},
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<DonorsRecord>>(
                                                  stream: queryDonorsRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              SpinKitFadingCube(
                                                            color: Color(
                                                                0xFF880707),
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<DonorsRecord>
                                                        slidableActionWidgetDonorsRecordList =
                                                        snapshot.data;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final slidableActionWidgetDonorsRecord =
                                                        slidableActionWidgetDonorsRecordList
                                                                .isNotEmpty
                                                            ? slidableActionWidgetDonorsRecordList
                                                                .first
                                                            : null;
                                                    return IconSlideAction(
                                                      caption: 'Discard',
                                                      color: Color(0xFFB80000),
                                                      icon: Icons
                                                          .remove_moderator,
                                                      onTap: () async {
                                                        await columnDonorsDonorsRecord
                                                            .reference
                                                            .delete();
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                              child: ListTile(
                                                title: Text(
                                                  columnDonorsDonorsRecord
                                                      .firstName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                                subtitle: Text(
                                                  'Organ Donor Form',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2,
                                                ),
                                                trailing: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xFF303030),
                                                  size: 20,
                                                ),
                                                tileColor: Color(0xFFF5F5F5),
                                                dense: false,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ],
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
    );
  }
}
