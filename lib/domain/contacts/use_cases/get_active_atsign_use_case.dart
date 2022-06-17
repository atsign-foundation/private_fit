import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/contacts/i_contacts_facade.dart';

@injectable
class GetActiveAtsignUseCase {
  GetActiveAtsignUseCase(this._contactsFacade);

  final IContactsFacade _contactsFacade;
  Option<String> call() => _contactsFacade.getOnBoardedAtSign();
}
