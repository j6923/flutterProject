

export 'HomePageCopyModel.dart';

class HomePageCopyModel {
  String? greeting;
  List<String>? instructions;

  HomePageCopyModel({this.greeting, this.instructions});

  HomePageCopyModel.fromJson(Map<String, dynamic> json) {
    greeting = json['greeting'];
    instructions = json['instructions'].cast<String>();
  }

  get pageViewController => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['greeting'] = this.greeting;
    data['instructions'] = this.instructions;
    return data;
  }
}
