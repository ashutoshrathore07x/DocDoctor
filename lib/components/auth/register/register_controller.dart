import 'package:doc_doctor/app/providers.dart';
import 'package:doc_doctor/components/controller_state_base.dart';
import 'package:doc_doctor/models/models.dart';
import 'package:doc_doctor/repositories/repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _registerControllerProvider =
    StateNotifierProvider<RegisterController, ControllerStateBase>(
  (ref) => RegisterController(ref.read),
);

class RegisterController extends StateNotifier<ControllerStateBase> {
  RegisterController(this._read) : super(const ControllerStateBase());

  static StateNotifierProvider<RegisterController, ControllerStateBase>
      get provider => _registerControllerProvider;

  static AlwaysAliveProviderBase<RegisterController> get notifier =>
      provider.notifier;

  final Reader _read;

  Future<void> create({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await _read(Repository.auth)
          .create(email: email, password: password, name: name);

      await _read(Repository.auth)
          .createSession(email: email, password: password);

      /// Sets the global app state user.
      _read(AppState.auth.notifier).setUser(user);
    } on RepositoryException catch (e) {
      state = state.copyWith(error: AppError(message: e.message));
    }
  }
}
