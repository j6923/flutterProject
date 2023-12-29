export 'HomePageCOpyCopyModel.dart';


class musicSecondPageModel{
  String? greeting;
  List<String>? instructions;

  musicSecondPageModel({this.greeting, this.instructions});

  musicSecondPageModel.fromJson(Map<String, dynamic> json) {
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
