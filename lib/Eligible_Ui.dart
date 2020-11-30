import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_change_notifier_basic/Eligible_Screen_provider.dart';

class Eligible_Ui extends StatelessWidget {
  @override
  final ageController = TextEditingController();
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligiblityScreenProvider>(
      create: (context) => EligiblityScreenProvider(),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent[100],
            child: Column(
              children: [
                Center(
                  child: Consumer<EligiblityScreenProvider>(
                      builder: (context, provider, child) {
                    return Container(
                      padding: EdgeInsets.all(50),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (provider.isEligible==null)? Colors.black26:(provider.isEligible)?Colors.green:Colors.red,
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: ageController,
                    decoration: InputDecoration(
                      labelText: "Input age",
                      labelStyle: TextStyle(


                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Consumer<EligiblityScreenProvider>(
                    builder: (context,provider,child) {
                      return
                      RaisedButton(
                        onPressed: () {
                          final int age = int.parse(ageController.text.trim());
                          provider.checkEligiblity(age);
                        },
                        color: Colors.blue,
                        child: Text("Check"),
                      );
                    }
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Consumer<EligiblityScreenProvider>(
                    builder: (context,provier,child){
                    return Text(
                     provier.eligiblityMessage,

                    );
  }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
