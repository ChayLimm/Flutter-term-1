class BankAccount {
    final String userName;
    late String userID; 
    double credits;
    double balances;

    BankAccount(this.userID, this.userName, this.credits, this.balances);

    double balance()=> this.balances;

    double withdraw(double amount){
      try {
        
          this.balances -= amount;
          return amount;
        
      }catch (e) {
        print(e); 
        throw "Insufficeint balance";
      }
      
    }

    void credit(double amount)=>this.credits += amount;
    

}

class Bank {
    // TODO
    final bankName ;
    List<BankAccount> accounts = [];

    Bank(this.bankName);

    createAccount(String userID,double balance, String username){
      try{
        
        
      }catch(e){
        print(e);
      }
    }

    




}
 
void main() {

  // Bank myBank = Bank(name: "CADT Bank");
  // BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  // print(ronanAccount.balance); // Balance: $0
  // ronanAccount.credit(100);
  // print(ronanAccount.balance); // Balance: $100
  // ronanAccount.withdraw(50);
  // print(ronanAccount.balance); // Balance: $50

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
