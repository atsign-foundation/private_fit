import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/sign_in/i_sign_in_facade.dart';

@lazySingleton
class GetAtSignWithStatus {
  GetAtSignWithStatus(this._iSignInFacade);

  final ISignInFacade _iSignInFacade;

  Future<Either<AtPlatformFailure, String>> call() {
    return _iSignInFacade.getAtsignsWithStatus().then(
      (value) async {
        return value.fold(
          left,
          (r) {
            if (r.isNotEmpty) {
              final atsign = r.keys.firstWhere(
                (String key) => r[key] == true,
              );
              return right(atsign);
            } else {
              return left(const AtPlatformFailure.serverError());
            }
          },
        );
      },
    );
  }
}
