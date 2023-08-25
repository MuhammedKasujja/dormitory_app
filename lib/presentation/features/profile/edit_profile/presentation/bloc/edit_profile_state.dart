part of 'edit_profile_bloc.dart';

class EditProfileState extends Equatable {
  const EditProfileState({
    this.status = FormzSubmissionStatus.initial,
    this.firstname = const RequiredField.pure(),
    this.lastname = const RequiredField.pure(),
    required this.email,
    this.telephone = const RequiredField.pure(),
    this.dateOfBirth = const NormalField.pure(),
    this.gender = const NormalField.pure(),
    this.profileImage = const NormalField.pure(),
    this.universityName = const NormalField.pure(),
    this.universityAddress = const NormalField.pure(),
    this.universityCountry = const NormalField.pure(),
    this.universityCity = const NormalField.pure(),
    this.universityLetter = const NormalField.pure(),
    this.isValid = false,
    this.errorMessage,
  });

  final FormzSubmissionStatus status;
  final RequiredField firstname;
  final RequiredField lastname;
  final Email email;
  final RequiredField telephone;
  final NormalField dateOfBirth;
  final NormalField gender;
  final NormalField profileImage;
  
  //university fields
  final NormalField universityName;
  final NormalField universityAddress;
  final NormalField universityCountry;
  final NormalField universityCity;
  final NormalField universityLetter;

  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props {
    return [
      status,
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
      isValid,
      errorMessage,
    ];
  }

  EditProfileState copyWith({
    FormzSubmissionStatus? status,
    RequiredField? firstname,
    RequiredField? lastname,
    Email? email,
    RequiredField? telephone,
    NormalField? dateOfBirth,
    NormalField? gender,
    NormalField? profileImage,
    NormalField? universityName,
    NormalField? universityAddress,
    NormalField? universityCountry,
    NormalField? universityCity,
    NormalField? universityLetter,
    bool? isValid,
    String? errorMessage,
  }) {
    return EditProfileState(
      status: status ?? this.status,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      telephone: telephone ?? this.telephone,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      profileImage: profileImage ?? this.profileImage,
      universityName: universityName ?? this.universityName,
      universityAddress: universityAddress ?? this.universityAddress,
      universityCountry: universityCountry ?? this.universityCountry,
      universityCity: universityCity ?? this.universityCity,
      universityLetter: universityLetter ?? this.universityLetter,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage,
    );
  }
}
