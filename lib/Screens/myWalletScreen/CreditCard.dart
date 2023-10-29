import 'package:flutter/animation.dart';
import 'dart:ui';
import 'package:libapp/Screens/myWalletScreen/transaction.dart';

class CreditCard {
  
  late Color color;
  String bank;
  String name;
  String ccname;
  String ccdate;
  
   List<Transaction> listTransaction;
   
  CreditCard({required this.color,
   required this.bank, 
   required this.name,
    required this.ccname, 
    required this.ccdate,
   
    }): listTransaction=[]{}

   void addTransaction(Transaction transaction){
      listTransaction.add(transaction);
    }

    List<Transaction> getTransaction(){
      return listTransaction;
    }
  
 
  

}