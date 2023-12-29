export 'HomePageCOpyCopyModel.dart';


class ArtistSecondPageModel{
  String? greeting;
  List<String>? instructions;

  ArtistSecondPageModel({this.greeting, this.instructions});

  ArtistSecondPageModel.fromJson(Map<String, dynamic> json) {
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
