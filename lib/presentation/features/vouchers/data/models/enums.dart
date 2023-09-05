enum VoucherStatus {
  active,
  expired,
  unUsed,
}

extension VoucherStatusX on VoucherStatus {
  bool get isActive => this == VoucherStatus.active;

  bool get isExpired => this == VoucherStatus.expired;

  bool get isUnUsed => this == VoucherStatus.unUsed;

  String get label => isActive
      ? 'Active'
      : isExpired
          ? 'Expired'
          : 'Unused';
}
