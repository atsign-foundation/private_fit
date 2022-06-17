import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/contacts/i_contacts_facade.dart';

@injectable
class AtContactInitializationUseCase {
  const AtContactInitializationUseCase(this._contactsFacade);

  final IContactsFacade _contactsFacade;

  Future<Unit> call() async => _contactsFacade.initializeContactsServices();
}
