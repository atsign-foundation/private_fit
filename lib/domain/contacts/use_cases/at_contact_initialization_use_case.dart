import 'package:private_fit/domain/contacts/i_contacts_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class AtContactInitializationUseCase {
  AtContactInitializationUseCase(this._contactsFacade);

  final IContactsFacade _contactsFacade;

  Future<Unit> call() async => _contactsFacade.initializeContactsServices();
}
