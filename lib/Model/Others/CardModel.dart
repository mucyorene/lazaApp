class AddNewCard {
  int id;
  String cardOwners;
  int cardNumber;
  String expireDate;
  int cardCVV;

  AddNewCard(
      {required this.id,
      required this.cardOwners,
      required this.cardNumber,
      required this.expireDate,
      required this.cardCVV});

  Map<dynamic, dynamic> toMap() {
    return {
      id: id,
      cardNumber: cardNumber,
      expireDate: expireDate,
    };
  }
}
