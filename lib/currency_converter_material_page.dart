import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State createState()=> _CurrencyConverterMaterialPageState();  
}
class _CurrencyConverterMaterialPageState extends State{
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  void convert(){
    result = double.parse(textEditingController.text) *0.012;
                setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    
    final border = OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))
                );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Currency Converter',
            // style: TextStyle(color: Colors.black),
            ),
          centerTitle: true,
        ),
        body: Center(
          child :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [ Text(
            '\$${result !=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText:'  Please enter the amount in INR',
                  prefixIcon: const Icon(Icons.currency_rupee_sharp),
                  filled: true,
                  fillColor: const Color.fromRGBO(253, 195, 255, 0.5),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
               onPressed: convert,
               
               style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(151, 173, 173, 173),
                foregroundColor:  Color.fromRGBO(0, 0, 0, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                ),
               ),
               child: Text('Convert'),
              ),
            ),
          ],
          ),
        ),
      );
  }
}