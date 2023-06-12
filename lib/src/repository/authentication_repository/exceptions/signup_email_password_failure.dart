class SignUpWithEmailAndPasswordFailure{
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message="An Unknown error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case'week-password': return const SignUpWithEmailAndPasswordFailure('Please enter a strong passwprd.');
      case'invalid-email': return const SignUpWithEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case'email-already-in-use': return const SignUpWithEmailAndPasswordFailure('An account already exists for that email');
      case'operation-not-allowed': return const SignUpWithEmailAndPasswordFailure('Operation is not allowed. Please contact suppror');
      case'user-disabled': return const SignUpWithEmailAndPasswordFailure('This user has been disabled. Please contact for help');
      default: return const SignUpWithEmailAndPasswordFailure();
    }
   }

}