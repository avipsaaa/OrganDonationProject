import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateWidget extends StatefulWidget {
  const DonateWidget({Key key}) : super(key: key);

  @override
  _DonateWidgetState createState() => _DonateWidgetState();
}

class _DonateWidgetState extends State<DonateWidget> {
  DateTime datePicked;
  String radioButtonGenderValue;
  TextEditingController textFirstNameController;
  TextEditingController textMiddleNameController;
  TextEditingController textLastNameController;
  TextEditingController textAddressLine1Controller;
  TextEditingController textAddressLine2Controller;
  TextEditingController textCityController;
  TextEditingController textProvinceController;
  TextEditingController textZipCodeController;
  TextEditingController textEmailController;
  TextEditingController textMobileController;
  bool confirmationCheckBoxValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textAddressLine1Controller = TextEditingController();
    textAddressLine2Controller = TextEditingController();
    textCityController = TextEditingController();
    textProvinceController = TextEditingController();
    textZipCodeController = TextEditingController();
    textFirstNameController = TextEditingController();
    textMiddleNameController = TextEditingController();
    textLastNameController = TextEditingController();
    textEmailController = TextEditingController();
    textMobileController = TextEditingController();
  }

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
          'Register Your Decision',
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
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Register a decision to donate',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Use this form become and organ, eye and tissue donor. It will only take you a minute to get registered.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFF161819),
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'About you',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: Color(0xFFC5C5C5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextFormField(
                                controller: textFirstNameController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textFirstNameController',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'First Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  hintText: 'Enter your first name',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF161819),
                                    ),
                                maxLines: 1,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textMiddleNameController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textMiddleNameController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Middle Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter your middle name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textLastNameController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textLastNameController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Last Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter your last name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Field is required';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Gender',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: Color(0xFF161819),
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 30,
                                              decoration: BoxDecoration(),
                                              child: FlutterFlowRadioButton(
                                                options: [
                                                  'Male',
                                                  'Female',
                                                  'Prefer not to say'
                                                ].toList(),
                                                onChanged: (value) {
                                                  setState(() =>
                                                      radioButtonGenderValue =
                                                          value);
                                                },
                                                optionHeight: 25,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.black,
                                                        ),
                                                buttonPosition:
                                                    RadioButtonPosition.left,
                                                direction: Axis.horizontal,
                                                radioButtonColor: Colors.blue,
                                                inactiveRadioButtonColor:
                                                    Color(0x8A000000),
                                                toggleable: false,
                                                horizontalAlignment:
                                                    WrapAlignment.spaceEvenly,
                                                verticalAlignment:
                                                    WrapCrossAlignment.start,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'DOB:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFF161819),
                                          ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await DatePicker.showDatePicker(
                                          context,
                                          showTitleActions: true,
                                          onConfirm: (date) {
                                            setState(() => datePicked = date);
                                          },
                                          currentTime: datePicked,
                                          minTime: DateTime(0, 0, 0),
                                          locale: LocaleType.values.firstWhere(
                                            (l) =>
                                                l.name ==
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                            orElse: null,
                                          ),
                                        );
                                      },
                                      text: dateTimeFormat('yMd', datePicked),
                                      icon: Icon(
                                        Icons.calendar_today,
                                        color: Color(0xFF161819),
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 290,
                                        height: 40,
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFF161819),
                                              fontSize: 14,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                        borderRadius: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Your Address',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: Color(0xFFC5C5C5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: textAddressLine1Controller,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textAddressLine1Controller',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Address Line 1',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  hintText: 'Enter your address',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF161819),
                                    ),
                                maxLines: 1,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textAddressLine2Controller,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textAddressLine2Controller',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Address Line 2',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter your address',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textCityController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textCityController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'City',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter your city',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Field is required';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textProvinceController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textProvinceController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Province',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter your province',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Field is required';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textZipCodeController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textZipCodeController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Zip Code',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter zip code',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Field is required';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Your Contact Information',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: Color(0xFFC5C5C5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextFormField(
                                controller: textEmailController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textEmailController',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Email Address',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  hintText: 'Enter your email address',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF161819),
                                    ),
                                maxLines: 1,
                                keyboardType: TextInputType.emailAddress,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  controller: textMobileController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textMobileController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Phone Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    hintText: 'Enter your phone number',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF161819),
                                      ),
                                  maxLines: 1,
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Confirmation',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: Color(0xFFC5C5C5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: confirmationCheckBoxValue ??= false,
                                  onChanged: (newValue) => setState(() =>
                                      confirmationCheckBoxValue = newValue),
                                  title: Text(
                                    'I have read the terms and conditions and give consent for the use of my informations if required.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF161819),
                                        ),
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Decision to Donate'),
                                                        content: Text(
                                                            'Please check your details as you will not be able to edit it later.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child:
                                                                Text('Confirm'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;

                                          final donorsCreateData =
                                              createDonorsRecordData(
                                            firstName:
                                                textFirstNameController.text,
                                            middleName:
                                                textMiddleNameController.text,
                                            lastName:
                                                textLastNameController.text,
                                            dateOfBirth: dateTimeFormat(
                                                'yMd', datePicked),
                                            addressLine1:
                                                textAddressLine1Controller.text,
                                            addressLine2:
                                                textAddressLine2Controller.text,
                                            city: textCityController.text,
                                            province:
                                                textProvinceController.text,
                                            zipCode: textZipCodeController.text,
                                            donorEmail:
                                                textEmailController.text,
                                            donorPhoneNumber:
                                                textMobileController.text,
                                            gender: radioButtonGenderValue,
                                            dId: currentUserReference,
                                          );
                                          await DonorsRecord.collection
                                              .doc()
                                              .set(donorsCreateData);
                                        },
                                        text: 'Donate',
                                        icon: Icon(
                                          Icons.check_circle_outline_outlined,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        options: FFButtonOptions(
                                          width: 140,
                                          height: 50,
                                          color: Color(0xFF166F32),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                            ],
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
      ),
    );
  }
}
