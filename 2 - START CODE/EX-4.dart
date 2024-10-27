void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example orders
  const orders = ['margherita', 'pepperoni'];
  double total = 0;
  for(int i =0; i<orders.length; i++) {
    for(var item in pizzaPrices.entries){
    if(item.key.contains(orders[i])){
      total += item.value;
    }
   }
  }
   print("The total is : ${total}");

}
