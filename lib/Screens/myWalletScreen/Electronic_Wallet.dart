
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:libapp/Screens/myWalletScreen/CreditCard.dart';
import 'package:libapp/Screens/myWalletScreen/transaction.dart';

class ElectronicWallet extends StatefulWidget {
  const ElectronicWallet({super.key});

  @override
  State<ElectronicWallet> createState() => _ElectronicWalletState();
}
//CreditCard(color:Colors.blue, bank: "MTN cash", name: "kasem al karaz",ccname:  "**** **** ****1234",ccdate:  "11/24"),
class _ElectronicWalletState extends State<ElectronicWallet> with SingleTickerProviderStateMixin {
  late CreditCard mycreditcard;
  late AnimationController animationController;
  late Animation cardAnimation;
  late SequenceAnimation sequenceAnimation;
  bool detailsopen=false;

  void initState(){
    mycreditcard=CreditCard(color: Color.fromARGB(255, 52, 9, 151), bank: "MTN cash", name: "kasem al karaz",ccname:  "**** **** ****1234",ccdate:  "11/24");
    mycreditcard.addTransaction(Transaction("food", "11/20", 22),);
    mycreditcard.addTransaction(Transaction("amazon", "01/22", 80),);
    mycreditcard.addTransaction(Transaction("shopping", "03/5", 30),);
    mycreditcard.addTransaction(Transaction("enternet", "01/21", 44),);



    animationController=AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      );
    sequenceAnimation= SequenceAnimationBuilder()
    .addAnimatable(
      animatable:Tween<double>(begin: 1,end: 0),
       from: Duration(milliseconds: 0), 
       to: Duration(milliseconds: 150), 
       tag: "card-padding",)
        .addAnimatable(
      animatable:Tween<double>(begin: 1,end: 0),
       from: Duration(milliseconds: 500), 
       to: Duration(milliseconds: 1000), 
       tag: "wallet-opacity",)

       .addAnimatable(
      animatable:Tween<double>(begin: 0,end: 1),
       from: Duration(milliseconds: 1000), 
       to: Duration(milliseconds: 1500), 
       tag: "details-opacity",)

         .addAnimatable(
      animatable:Tween<double>(begin: 0,end: 1),
       from: Duration(milliseconds: 500), 
       to: Duration(milliseconds: 1000), 
       tag: "transaction-opacity",)

      .addAnimatable(
      animatable:Tween<double>(begin: 100,end: 50),
       from: Duration(milliseconds: 250), 
       to: Duration(milliseconds: 1000), 
       tag: "transaction-padding"
       ).animate(animationController);
       
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 0, 29),
      body:  AnimatedBuilder(
        animation: animationController,
        builder: ((context, child) {
       return   Stack(
          
          children: [
              Stack(
              children: [
                
                Container(
                  margin: EdgeInsets.fromLTRB(
                    60.0 * sequenceAnimation['card-padding'].value, 
                    150.0* sequenceAnimation['card-padding'].value, 
                    60.0* sequenceAnimation['card-padding'].value, 
                    600.0*sequenceAnimation['card-padding'].value, ),
              
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 83, 14, 194),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
               ),  
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                   CreditCardwidget(mycreditcard),
                   Opacity(
                    opacity: sequenceAnimation['transaction-opacity'].value ,
                     child: Column(
                       children: [
                         Padding(
                           padding:  EdgeInsets.only(top: 3.0+sequenceAnimation['transaction-padding'].value,left: 20),
                           child: Row(children: const [
                             Text(
                               "last transaction",
                                  style: TextStyle(
                               color: Colors.white,
                               fontSize: 30,
                               fontWeight: FontWeight.bold,),
                               ),
                            
                          ],),
                           
                         ),
                           Padding(
                        padding:  const EdgeInsets.only(top: 10 ,left: 20,right: 20),
                        child: Column(children: listTransaction(mycreditcard),                      
                        ),
                      ),
                       ],
                     ),
                   ),
                    
                      ],
                    ),
                  ),
                )
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               sequenceAnimation['wallet-opacity'].value>0?   Opacity(
                    
                    opacity: sequenceAnimation['wallet-opacity'].value,
                     child: Text(
                      "Wallet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        ),),
                   ):  Opacity(
                    opacity:   sequenceAnimation['details-opacity'].value,
                     child: Text(
                        "Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          ),),
                   ),  
                 
                ],
            ),
              )),
          
            
          ],
        );
        }
     
      ),
    )
    );
  }
  // ignore: non_constant_identifier_names
  Widget CreditCardwidget(CreditCard card){
   return Row(
    mainAxisAlignment: MainAxisAlignment.center,
     children :[  
      GestureDetector(
      onTap:(){
       animationController.forward();
       setState(() {
         if(!detailsopen)animationController.forward();
         else animationController.reverse();
         detailsopen =!detailsopen;
       });
        },
        child: Container(
        height: 150,
        width: 270,
        decoration: BoxDecoration(color:  Color.fromARGB(255, 74, 7, 136),
         borderRadius: BorderRadius.all(Radius.circular(15),)  ,
        boxShadow: [BoxShadow(
          color: Color.fromARGB(95, 1, 0, 2),
          spreadRadius: 7,
          offset: Offset(-7,7),
          blurRadius: 10,
          ),  ] ),
       
        
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(card.bank,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                    Icon(Icons.touch_app_outlined,color: Colors.white,size: 25,),
                    
                    
                  ],
                ),
                SizedBox(height: 10,),
                
               
               Text(card.ccname,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal,),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(card.name,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal,),),
                     SizedBox(width: 10,),
                      Text(card.ccdate,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal,),),
                  ],
                ),

              ],
          ),
        ),
           ),
      ),
     ],
   ) ;
  }
List<Widget> listTransaction(CreditCard card){
  List<Widget> transactions=[];
  for(Transaction transaction in card.getTransaction()){
    transactions.add(Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(transaction.type,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
               SizedBox(height: 3,),
                Text(transaction.date,style: TextStyle(color: Colors.white,fontSize: 20),),

             ], 
           ),
            Text("\$${transaction.quantity}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        ],
      ),
    ),);
  }
  return transactions;
}

}