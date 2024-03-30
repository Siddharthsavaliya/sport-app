import 'package:form_field_validator/form_field_validator.dart';

final requiredValidator =
    RequiredValidator(errorText: 'This field is required');
final requiredReviewTitleValidator =
    RequiredValidator(errorText: 'Review Title is required');
final requiredYourReviewTitleValidator =
    RequiredValidator(errorText: 'Your Review is required');
final emailRequiredValidator =
    RequiredValidator(errorText: 'Please enter a email');

final phoneNumberValidator = MinLengthValidator(
  10,
  errorText: 'Invalid mobile number',
);

final emailValidator = EmailValidator(errorText: 'Please enter a valid email');

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
  PatternValidator(
    '[A-Z]',
    errorText: 'Password must have at least one upperCase character',
  ),
  PatternValidator(
    r'(?=.*?[#?!@$%^&*-])',
    errorText: 'Password must have at least one special character',
  )
]);
final priceValidator = MultiValidator([
  RequiredValidator(errorText: 'Ticket Price is required'),
  RangeValidator(
      min: 0,
      max: 100000,
      errorText: 'This Event has a Maximum ticket price of `1,00,000`'),
]);

String? confirmPasswordValidator({
  required String? val,
  required String password,
}) {
  return RequiredValidator(errorText: 'Confirm password is required')
          .call(val) ??
      MatchValidator(errorText: 'Passwords do not match')
          .validateMatch(val ?? '', password);
}
