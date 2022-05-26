import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0xFF880707),
          child: Center(
            child: Builder(
              builder: (context) => Image.asset(
                'assets/images/logo.jpg',
                width: 300,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'UserProfile': (data) async => NavBarPage(initialPage: 'UserProfile'),
  'RegisterYourDecision': (data) async => RegisterYourDecisionWidget(),
  'Donate': (data) async => DonateWidget(),
  'Register': (data) async => RegisterWidget(),
  'Login': (data) async => LoginWidget(),
  'ResetPassword': (data) async => ResetPasswordWidget(),
  'AfterResetPassword': (data) async => AfterResetPasswordWidget(),
  'Withdraw': (data) async => WithdrawWidget(),
  'WhatCanYouDonate': (data) async => WhatCanYouDonateWidget(),
  'HelpingYouDecide': (data) async => HelpingYouDecideWidget(),
  'HeartDonation': (data) async => HeartDonationWidget(),
  'TalkToYourLovedOnes': (data) async => TalkToYourLovedOnesWidget(),
  'NepalLaws': (data) async => NepalLawsWidget(),
  'SupportUs': (data) async => SupportUsWidget(),
  'KnowAboutUs': (data) async => KnowAboutUsWidget(),
  'LungsDonation': (data) async => LungsDonationWidget(),
  'LiverDonation': (data) async => LiverDonationWidget(),
  'KidneyDonation': (data) async => KidneyDonationWidget(),
  'PancreasDonation': (data) async => PancreasDonationWidget(),
  'SmallBowelDonation': (data) async => SmallBowelDonationWidget(),
  'TissueDonation': (data) async => TissueDonationWidget(),
  'BecomingALivingDonor': (data) async => BecomingALivingDonorWidget(),
  'WhoCanDonate': (data) async => WhoCanDonateWidget(),
  'Consent': (data) async => ConsentWidget(),
  'AdminPage': (data) async => AdminPageWidget(),
  'NotificationSettings': (data) async => NotificationSettingsWidget(),
  'ChangePassword': (data) async => ChangePasswordWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
