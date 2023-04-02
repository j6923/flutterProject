export 'HomePageCOpyCopyModel.dart';


class HomePageCopyCopyModel{
  String? greeting;
  List<String>? instructions;

  HomePageCopyCopyModel({this.greeting, this.instructions});

  HomePageCopyCopyModel.fromJson(Map<String, dynamic> json) {
    greeting = json['greeting'];
    instructions = json['instructions'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['greeting'] = this.greeting;
    data['instructions'] = this.instructions;
    return data;
  }
}
