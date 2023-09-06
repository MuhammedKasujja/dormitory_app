enum VoucherFilterType {
  latest,
  oldest,
  lowestValue,
  highestValue,
}

extension VoucherSortTypeX on VoucherFilterType {
  bool get isLatest => this == VoucherFilterType.latest;

  bool get isOldest => this == VoucherFilterType.oldest;

  bool get isLowestValue => this == VoucherFilterType.lowestValue;

  bool get isHighestValue => this == VoucherFilterType.highestValue;
}
