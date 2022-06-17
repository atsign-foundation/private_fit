// ignore_for_file: avoid_void_async

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_contacts_flutter/at_contacts_flutter.dart';
import 'package:at_contacts_group_flutter/at_contacts_group_flutter.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/contacts/i_contacts_facade.dart';
import 'package:private_fit/shared/constants.dart';

///implementation of the [IContactsFacade]
@LazySingleton(as: IContactsFacade)
class ContactsFacade implements IContactsFacade {
  @override
  Future<Unit> initializeContactsServices() async {
    //todo: ask atsign team why this below function doesn't need params
    //todo: how to handle dev,staging and pro if it assumes rootDomain

    initializeContactsService();
    initializeGroupService(rootDomain: Constants.rootDomain);
    return unit;
  }

  @override
  Option<String> getOnBoardedAtSign() {
    final AtClient atClient = AtClientManager.getInstance().atClient;
    return optionOf(atClient.getCurrentAtSign());
  }
}
