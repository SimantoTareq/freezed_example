import 'package:flutter/material.dart';
import 'package:freezed_example/model/person_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PersonModel> personList =[
    PersonModel(name: 'Tareq Hossain'),
    PersonModel(name: 'John'),
    PersonModel(name: 'xxx'),
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: personList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(personList[index].name.toString()),


          );
        
      },),
      floatingActionButton: FloatingActionButton(onPressed: () {
        PersonModel personModel = PersonModel(name: "Tareq");
        PersonModel personModel1 = PersonModel(name: "Tareq");
        
        Map<String, dynamic> data = {
          'name' : 'Tareq Hossain', 

        };
        PersonModel model = PersonModel.fromJson(data);
        print(model.name.toString());
        model =   model.copyWith(name: 'new value');
        print(personModel.hashCode.toString());
        
      
        print(model.name.toString());

      },),
    );
  }
}