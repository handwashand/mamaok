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

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

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
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
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
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/Profile_Settings.png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Reg': ParameterData.none(),
  'HomePage': ParameterData.none(),
  'OutBord': ParameterData.none(),
  'Companions': ParameterData.none(),
  'OutBord1': ParameterData.none(),
  'Push': (data) async => ParameterData(
        allParams: {},
      ),
  'Filtr': ParameterData.none(),
  'CompanionView': (data) async => ParameterData(
        allParams: {
          'compan': await getDocumentParameter<UsersRecord>(
              data, 'compan', UsersRecord.fromSnapshot),
        },
      ),
  'CompanionVideo': (data) async => ParameterData(
        allParams: {
          'compa': await getDocumentParameter<UsersRecord>(
              data, 'compa', UsersRecord.fromSnapshot),
        },
      ),
  'CompanionFeedBack': (data) async => ParameterData(
        allParams: {
          'compan': await getDocumentParameter<UsersRecord>(
              data, 'compan', UsersRecord.fromSnapshot),
        },
      ),
  'FindCompStart': ParameterData.none(),
  'Test2': ParameterData.none(),
  'Pricing': ParameterData.none(),
  'CustomerCabinet': ParameterData.none(),
  'CustCabinetChange': ParameterData.none(),
  'Balance': ParameterData.none(),
  'Balance2': ParameterData.none(),
  'SMS': ParameterData.none(),
  'RegAvto': ParameterData.none(),
  'LogAvto': ParameterData.none(),
  'RegRole': ParameterData.none(),
  'RegInfo': ParameterData.none(),
  'PoliticConf': ParameterData.none(),
  'PolzSogl': ParameterData.none(),
  'OffertaComp': ParameterData.none(),
  'OffertaWard': ParameterData.none(),
  'CusMeetingHistory': ParameterData.none(),
  'MakeWard': ParameterData.none(),
  'MakeWard2': ParameterData.none(),
  'Chat': (data) async => ParameterData(
        allParams: {
          'chatUser': await getDocumentParameter<UsersRecord>(
              data, 'chatUser', UsersRecord.fromSnapshot),
          'chatRef': getParameter<DocumentReference>(data, 'chatRef'),
        },
      ),
  'AdminChats': ParameterData.none(),
  'AdminChat1': ParameterData.none(),
  'Test3': ParameterData.none(),
  'Test4': ParameterData.none(),
  'Test1': ParameterData.none(),
  'Test5': ParameterData.none(),
  'FindCompNo': ParameterData.none(),
  'Test6': ParameterData.none(),
  'Test7': ParameterData.none(),
  'Test8': ParameterData.none(),
  'Test9': ParameterData.none(),
  'HomeCompanion': ParameterData.none(),
  'CompanionCabinet': ParameterData.none(),
  'CalendComp': ParameterData.none(),
  'MapCustomer': ParameterData.none(),
  'whishMeeting': ParameterData.none(),
  'ZayavkaEnd': ParameterData.none(),
  'CompDetailMeet': (data) async => ParameterData(
        allParams: {
          'meeting': await getDocumentParameter<MeetingsRecord>(
              data, 'meeting', MeetingsRecord.fromSnapshot),
        },
      ),
  'compChangeInfo': ParameterData.none(),
  'CompDetailMeet1': (data) async => ParameterData(
        allParams: {
          'meeting': await getDocumentParameter<MeetingsRecord>(
              data, 'meeting', MeetingsRecord.fromSnapshot),
        },
      ),
  'First': ParameterData.none(),
  'CompMeetReport': (data) async => ParameterData(
        allParams: {
          'meeting': await getDocumentParameter<MeetingsRecord>(
              data, 'meeting', MeetingsRecord.fromSnapshot),
        },
      ),
  'CustomerMeeting': (data) async => ParameterData(
        allParams: {
          'meeting': await getDocumentParameter<MeetingsRecord>(
              data, 'meeting', MeetingsRecord.fromSnapshot),
        },
      ),
  'CustomerMeetingReport': (data) async => ParameterData(
        allParams: {
          'meeting': await getDocumentParameter<MeetingsRecord>(
              data, 'meeting', MeetingsRecord.fromSnapshot),
        },
      ),
  'CalendCustomer': ParameterData.none(),
  'About': ParameterData.none(),
  'AdminHome': ParameterData.none(),
  'AdminMeeting': ParameterData.none(),
  'AdminWard': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
        },
      ),
  'AdressList': ParameterData.none(),
  'Test7Customer': ParameterData.none(),
  'Payview': (data) async => ParameterData(
        allParams: {
          'vozv': getParameter<int>(data, 'vozv'),
        },
      ),
  'CompMeetingHistory': ParameterData.none(),
  'Favorite': ParameterData.none(),
  'HomeWard': ParameterData.none(),
  'CalendWard': ParameterData.none(),
  'WardDetailMeet': (data) async => ParameterData(
        allParams: {
          'meeting': await getDocumentParameter<MeetingsRecord>(
              data, 'meeting', MeetingsRecord.fromSnapshot),
        },
      ),
  'WardCabinet': ParameterData.none(),
  'PayOK': ParameterData.none(),
  'AdressList2': ParameterData.none(),
  'MapCustomer2': ParameterData.none(),
  'BalanceCompan': ParameterData.none(),
  'AdminCompanion': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
        },
      ),
  'AdminAdressList': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
        },
      ),
  'AdmibwhishMeeting': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
        },
      ),
  'AdminZayavkaEnd': (data) async => ParameterData(
        allParams: {
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
        },
      ),
  'AdminTafifsCustomer': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
        },
      ),
  'AdminTimeMeet': (data) async => ParameterData(
        allParams: {
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
        },
      ),
  'AdminTarifs': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
        },
      ),
  'AdminMeetPlan': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
        },
      ),
  'AdminMap': (data) async => ParameterData(
        allParams: {
          'customer': await getDocumentParameter<UsersRecord>(
              data, 'customer', UsersRecord.fromSnapshot),
          'companion': await getDocumentParameter<UsersRecord>(
              data, 'companion', UsersRecord.fromSnapshot),
        },
      ),
  'CompanionViewCopy': (data) async => ParameterData(
        allParams: {
          'compan': await getDocumentParameter<UsersRecord>(
              data, 'compan', UsersRecord.fromSnapshot),
        },
      ),
};

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
