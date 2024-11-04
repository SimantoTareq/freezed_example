import 'package:flutter/material.dart';
import 'package:freezed_example/model/Fperson_model.dart';
import 'package:freezed_example/model/person_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PersonModel> personList =[
    PersonModel(name: 'Tareq Hossain'),
    PersonModel(name: null),
    PersonModel(name: 'xxx'),
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: personList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(personList[index].name ?? " "),


          );
        
      },),
      floatingActionButton: FloatingActionButton(onPressed: () {
        PersonModel personModel = PersonModel(name: "Tareq");
        
        Map<String, dynamic> data = {
          'name' : null, 

        };
        FpersonModel model = FpersonModel.fromJson(data);
        print(model.name.toString());
        model =   model.copyWith(name: 'new value');        
      
        print( "Value :" +model.name.toString());

      },),
    );
  }
}