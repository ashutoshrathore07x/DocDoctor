import 'package:doc_doctor/app/providers.dart';
import 'package:doc_doctor/components/controller_state_base.dart';
import 'package:doc_doctor/models/models.dart';
import 'package:doc_doctor/repositories/repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final _loginControllerProvider =
    StateNotifierProvider<LoginController, ControllerStateBase>(
  (ref) => LoginController(ref.read),
);

class LoginController extends StateNotifier<ControllerStateBase> {
  LoginController(this._read) : super(const ControllerStateBase());

  static StateNotifierProvider<LoginController, ControllerStateBase>
      get provider => _loginControllerProvider;

  static AlwaysAliveProviderBase<LoginController> get notifier =>
      provider.notifier;

  final Reader _read;

  Future<void> createSession({
    required String email,
    required String password,
  }) async {
    try {
      await _read(Repository.auth)
          .createSession(email: email, password: password);

      final user = await _read(Repository.auth).get();

      /// Sets the global app state user.
      _read(AppState.auth.notifier).setUser(user);
    } on RepositoryException catch (e) {
      state = state.copyWith(error: AppError(message: e.message));
    }
  }
}
