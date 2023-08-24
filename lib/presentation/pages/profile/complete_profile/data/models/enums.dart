enum ActiveProfileSection {
  none,
  verifyOtp,
  additionalInfo,
  universityInfo,
}

extension ActiveProfileSectionX on ActiveProfileSection {
  bool get isNone => this == ActiveProfileSection.none;

  bool get isVerifyOtp => this == ActiveProfileSection.verifyOtp;

  bool get isAdditionalInfo => this == ActiveProfileSection.additionalInfo;

  bool get isUniversityInfo => this == ActiveProfileSection.universityInfo;
}
