class CharactersModel {
  int? id;
  String? name;
  String? birthday;
  List occupation = [];
  String? img;
  String? status;
  String? nickname;
  List appearance = [];
  String? portrayed;
  String? category;
  List better_call_saul_appearance = [];

  CharactersModel.fromJson({required Map<String, dynamic> json}) {
    id = json['id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'];
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
    appearance = json['appearance'];
    portrayed = json['portrayed'];
    category = json['category'];
    better_call_saul_appearance = json['better_call_saul_appearance'];
  }
}
