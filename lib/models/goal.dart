class Goal {
  int id;
  String name;
  int amount;
  int deposit = 0;

  Goal({required this.id, required this.name, required this.amount});

  int get left {
    return amount - left;
  }

  void addDeposit(int deposit) {
    this.deposit += deposit;
  }
}
