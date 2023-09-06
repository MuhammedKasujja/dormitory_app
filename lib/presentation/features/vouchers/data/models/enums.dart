enum VoucherSortType {
  latest,
  oldest,
  lowestValue,
  highestValue,
}

extension VoucherSortTypeX on VoucherSortType {
  bool get isLatest => this == VoucherSortType.latest;

  bool get isOldest => this == VoucherSortType.oldest;

  bool get isLowestValue => this == VoucherSortType.lowestValue;

  bool get isHighestValue => this == VoucherSortType.highestValue;
}
