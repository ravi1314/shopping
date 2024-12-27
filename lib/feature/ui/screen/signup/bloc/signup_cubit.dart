import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping/feature/ui/screen/signup/repository/signup_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  Future<void> signup(String email, String password, String username) async {
    emit(SignupLoading());
    try {
      await SignupRepo().signup(email, password, username);
      emit(SignupSuccess(message: 'Signup Success'));
    } catch (error) {
      emit(SignupFailed(message: error.toString()));
    }
  }
}
