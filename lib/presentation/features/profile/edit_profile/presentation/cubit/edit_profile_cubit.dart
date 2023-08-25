import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/validations/validations.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final AuthRepository authRepository;
  EditProfileCubit({required this.authRepository})
      : super(EditProfileState(email: Email.pure()));

  onEditProfileActivated(UserModel user) {
    emit(EditProfileState(email: Email.pure()));

    final firstname = RequiredField.dirty(user.firstname);
    final lastname = RequiredField.dirty(user.lastname);
    final email = Email.dirty(user.email);
    final telephone = RequiredField.dirty(user.telephone);
    final dateOfBirth = NormalField.dirty(user.dateOfBirth ?? '');
    final gender = NormalField.dirty(user.gender ?? '');
    final profileImage = NormalField.dirty(user.photoUrl ?? '');
    final universityName = NormalField.dirty(user.university?.name ?? '');
    final universityAddress = NormalField.dirty(user.university?.address ?? '');
    final universityCountry = NormalField.dirty(user.university?.country ?? '');
    final universityCity = NormalField.dirty(user.university?.city ?? '');
    final universityLetter =
        NormalField.dirty(user.university?.attachmentFileUrl ?? '');

    emit(state.copyWith(
      firstname: firstname,
      lastname: lastname,
      email: email,
      telephone: telephone,
      dateOfBirth: dateOfBirth,
      gender: gender,
      profileImage: profileImage,
      universityName: universityName,
      universityAddress: universityAddress,
      universityCountry: universityCountry,
      universityCity: universityCity,
      universityLetter: universityLetter,
      isValid: Formz.validate([
        firstname,
        lastname,
        email,
        telephone,
        dateOfBirth,
        gender,
        profileImage,
        universityName,
        universityAddress,
        universityCountry,
        universityCity,
        universityLetter,
      ]),
    ));
  }

  firstNameChanged(String value) {
    final firstname = RequiredField.dirty(value);
    emit(state.copyWith(
      firstname: firstname,
      isValid: Formz.validate([
        firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  lastNameChanged(String value) {
    final lastname = RequiredField.dirty(value);
    emit(state.copyWith(
      lastname: lastname,
      isValid: Formz.validate([
        lastname,
        state.firstname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([
        email,
        state.firstname,
        state.lastname,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  telephoneChanged(String value) {
    final telephone = RequiredField.dirty(value);
    emit(state.copyWith(
      telephone: telephone,
      isValid: Formz.validate([
        telephone,
        state.firstname,
        state.lastname,
        state.email,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  dateOfBirthChanged(String value) {
    final dateOfBirth = NormalField.dirty(value);
    emit(state.copyWith(
      dateOfBirth: dateOfBirth,
      isValid: Formz.validate([
        dateOfBirth,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  genderChanged(String? value) {
    if (value == null) return;
    final gender = NormalField.dirty(value);
    emit(state.copyWith(
      gender: gender,
      isValid: Formz.validate([
        gender,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  profileImageChanged(String value) {
    final profileImage = NormalField.dirty(value);
    emit(state.copyWith(
      profileImage: profileImage,
      isValid: Formz.validate([
        profileImage,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  universityNameChanged(String value) {
    final universityName = NormalField.dirty(value);
    emit(state.copyWith(
      universityName: universityName,
      isValid: Formz.validate([
        universityName,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  universityAddressChanged(String value) {
    final universityAddress = NormalField.dirty(value);
    emit(state.copyWith(
      universityAddress: universityAddress,
      isValid: Formz.validate([
        universityAddress,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityCountry,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  universityCountryChanged(String value) {
    final universityCountry = NormalField.dirty(value);
    emit(state.copyWith(
      universityCountry: universityCountry,
      isValid: Formz.validate([
        universityCountry,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCity,
        state.universityLetter,
      ]),
    ));
  }

  universityCityChanged(String value) {
    final universityCity = NormalField.dirty(value);
    emit(state.copyWith(
      universityCity: universityCity,
      isValid: Formz.validate([
        universityCity,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityLetter,
      ]),
    ));
  }

  universityLetterChanged(String value) {
    final universityLetter = NormalField.dirty(value);
    emit(state.copyWith(
      universityLetter: universityLetter,
      isValid: Formz.validate([
        universityLetter,
        state.firstname,
        state.lastname,
        state.email,
        state.telephone,
        state.dateOfBirth,
        state.gender,
        state.profileImage,
        state.universityName,
        state.universityAddress,
        state.universityCountry,
        state.universityCity,
      ]),
    ));
  }

  Future<void> submitEditProfileForm() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
     await Future.delayed(const Duration(seconds: 3));
      // submit edited form
      emit(state.copyWith(
        status: FormzSubmissionStatus.success,
        user: UserModel(
          id: '65789087654',
          firstname: state.firstname.value,
          lastname: state.lastname.value,
          email: state.email.value,
          countryCode: '+256',
          telephone: state.telephone.value,
          isVerified: true,
          gender: state.gender.value,
          dateOfBirth: state.dateOfBirth.value,
          university: UniversityModel(
            id: '67890987654',
            name: state.universityName.value,
            address: state.universityAddress.value,
            country: state.universityCountry.value,
            city: state.universityCity.value,
          ),
        ),
      ));
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
