displayFruiteDetails(Fruits)
{
  for(var Fruits in Fruits)
    {
      print('Name : ${Fruits['name']}, Color: ${Fruits['Color']}, Price : \$${Fruits['Price']}');
    }

}

applyDiscount(Fruits,var Discount)
{
  for(var Fruits in Fruits)
    {
      var orginalPrice = Fruits['Price'];
      var DiscountAmount = orginalPrice * (Discount / 100);
      Fruits['Price'] = orginalPrice - DiscountAmount;
    }

}


void main()
{
  List<Map<String, dynamic>>Fruits = [
    {'name': 'Apple', 'color': 'Red','Price': 2.5},
    {'name': 'Banana', 'color': 'Yellow','Price': 1.0},
    {'name': 'Grapes', 'color': 'Purple','Price': 3.0},
  ];

  print('Original Fruit Details Before Discount : ');
  displayFruiteDetails(Fruits);

  print('\n After Discout :\n');

  applyDiscount(Fruits,10);

  displayFruiteDetails(Fruits);
}