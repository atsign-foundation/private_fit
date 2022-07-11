import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/home/i_home_facade.dart';

@lazySingleton
class GetAllKeysUseCase {
  GetAllKeysUseCase(this._iHomeFacade);

  final IHomeFacade _iHomeFacade;

  Future<List<AtKey>> call({
    String? regex,
    String? sharedBy,
    String? sharedWith,
  }) =>
      _iHomeFacade.getAllKeys(
        regex: regex,
        sharedBy: sharedBy,
        sharedWith: sharedWith,
      );
}
