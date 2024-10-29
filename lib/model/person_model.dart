class PersonModel {
  String? name;
  PersonModel({this.name});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
         other is PersonModel &&
              runtimeType == other.runtimeType &&
              name == other.name;
  
  @override
  // TODO: implement hashCode
  int get hashCode => name.hashCode;

  PersonModel.fromJson(Map<String, dynamic> json){
    name = json['name'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;

  }
  PersonModel copyWith({
    String? name,


  }){
    return PersonModel(
      name: name ?? name
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Person(firstName :$name)';
  }


}