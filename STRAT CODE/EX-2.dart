class BankAccount {
  final String userName;
  final double userID;
  double balances;

  BankAccount(this.userID, this.userName) : this.balances = 0;

  double get balance => this.balances;

  double withdraw(double amount) {
    try {
      if (this.balances >= amount) {
        this.balances -= amount;
        return amount;
      } else {
        throw Exception("Insufficient balance");
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
 

  void credit(double amount) => this.balances += amount;
}

class Bank {
  // TODO
  final name;
  List<BankAccount> accounts = [];

  Bank({required this.name});

  BankAccount createAccount(double userID, String username) {
    try{
     BankAccount createAccount = BankAccount(userID, username);
      for(var items in accounts){
        if(items.userID == userID){
          throw Exception("userID is already existed");
        }
      }
      accounts.add(createAccount);
    return createAccount;
    }catch (e){
      print(e);   
      rethrow;
    }
  
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50
  // ronanAccount.withdraw(75);


  myBank.createAccount(100, 'Honlgy');

  // try {
  //   ronanAccount.withdraw(75); // This will throw an exception
  // } catch (e) {
  //   print(e); // Output: Insufficient balance for withdrawal!
  // }

  // try {
  //   myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  // } catch (e) {
  //   print(e); // Output: Account with ID 100 already exists!
  // }
}
