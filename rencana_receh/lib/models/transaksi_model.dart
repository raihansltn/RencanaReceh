
class FinancialTransaction {
  final int? id;
  final String type;
  final double amount;
  final String description;
  final DateTime date;

  FinancialTransaction({
    this.id,
    required this.type,
    required this.amount,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'amount': amount,
      'description': description,
      'date': date.toIso8601String(),
    };
  }

  static FinancialTransaction fromMap(Map<String, dynamic> map) {
    return FinancialTransaction(
      id: map['id'],
      type: map['type'],
      amount: map['amount'],
      description: map['description'],
      date: DateTime.parse(map['date']),
    );
  }
}
