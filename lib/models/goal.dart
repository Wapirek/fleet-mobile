class Goal {
  int id;
  String name;
  int amount;
  int deposit;

  Goal(
      {required this.id,
      required this.name,
      required this.amount,
      required this.deposit});

  int get left {
    return amount - left;
  }

  void addDeposit(int deposit) {
    this.deposit += deposit;
  }
}
