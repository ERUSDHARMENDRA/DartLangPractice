void main() {

  print('CASE 1');
  //CASE 2: When you know the exception to be thrown, use ON Clause
  try{
    int result=12~/0;
    print ('The result is: $result');
  }on IntegerDivisionByZeroException{
    print('Can\'t divide by zero');
  }

  print('CASE 2');
  //CASE 2: When you don't know the exception to be thrown, use CATCH Clause
  try{
    int result=12~/0;
    print ('The result is: $result');
  }catch(e){
    print('The Exception thrown is: $e');
  }


  print('CASE 3');
  //CASE 2: Using the STACK TRACE to know the events occurred before the Exception was thrown
  try{
    int result=12~/0;
    print ('The result is: $result');
  }catch(e,s){
    print('The Exception thrown is: $e');
    print('STACK TRACE:\n $s');
  }

  print('CASE 4');
  //CASE 2: Whether there is an Exception or not, FINALLY Clause is always Executed
  try{
    int result=12~/0;
    print ('The result is: $result');
  }catch(e,s){
    print('The Exception thrown is: $e');
    print('STACK TRACE:\n $s');
  } finally{
    print('This is FINALLY Clause and is always executed');
  }

  print('CASE 5');
  //CASE 5
 try{
   depositMoney(-200);
 }catch(e){
   print(e.errorMessage());
 }

}


class DepositException implements Exception{
  String errorMessage(){
   return 'You can\'t enter the amount less than zero';
  }
}

void depositMoney(int amount){
  if(amount<0){
    throw new DepositException();
  }
}