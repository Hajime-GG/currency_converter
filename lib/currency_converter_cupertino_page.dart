import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  void convert(){
    result = double.parse(textEditingController.text) *0.012;
                setState(() {});
  }


  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
          backgroundColor: CupertinoColors.systemGrey3,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          
          middle: Text(
            'Currency Converter',
            // style: TextStyle(color: Colors.black),
            ),
          // centerTitle: true,
        ),
        child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  

                ),
                placeholder: 'Please Enter The Amount In INR',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CupertinoButton(
               onPressed: convert,
               color: CupertinoColors.black,
               child: Text('Convert'),
               
               ),
               
              ),
            
          ],
          ),
        ),
      );
  }
}