import '../models/balance.dart';

class ListOfBalance {
  static int _balanceCounter = 0;

  List<Balance> _balance = [
    Balance(questionBalance: 100),
    Balance(questionBalance: 200),
    Balance(questionBalance: 300),
    Balance(questionBalance: 500),
    Balance(questionBalance: 1000),
    Balance(questionBalance: 2000),
    Balance(questionBalance: 4000),
    Balance(questionBalance: 8000),
    Balance(questionBalance: 16000),
    Balance(questionBalance: 32000),
    Balance(questionBalance: 64000),
    Balance(questionBalance: 125000),
    Balance(questionBalance: 250000),
    Balance(questionBalance: 500000),
    Balance(questionBalance: 1000000),
  ];

// get current balance
  void resetBalanceCounter() => _balanceCounter = 0;

  //*this function to get the balance
  //* _balance[_balanceCounter - 1].questionBalance; >> -1 to start from 100 SR

  int getNewBalance() {
    _balanceCounter++;
    return _balance[_balanceCounter - 1].questionBalance;
  }

  int getCurrentBalance() {
    if (_balanceCounter > 0)
      return _balance[_balanceCounter - 1].questionBalance;
    else
      return 0;
  }

  //* update user balance when he loss
  int isLoss() {
    if (getCurrentBalance() >= 32000)
      return 32000;
    else if (getCurrentBalance() >= 1000)
      return 1000;
    else
      return 0;
  }
}
