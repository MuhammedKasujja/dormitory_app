enum FacilityType { free, paidFor }

extension FacilityTypeX on FacilityType {
  bool get isFree => this == FacilityType.free;
  bool get isPaidFor => this == FacilityType.paidFor;
}

enum PaymentPeriodType {
  monthly,
  yearly,
}

extension PaymentPeriodTypeX on PaymentPeriodType {
  String get label => this == PaymentPeriodType.monthly ? 'month' : 'yearly';
}

enum DormitoryStayDurationType {
  weeks,
  months,
}

enum DormitoryType {
  all,
  male,
  female,
}
