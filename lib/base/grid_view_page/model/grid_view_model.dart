class GridViewModel {
  String? name;
  double? uzaklik;
  String? bio;
  String? photo;
  Null? photoLink;
  String? gender;
  String? follows;
  String? followers;

  GridViewModel(
      {this.name,
      this.uzaklik,
      this.bio,
      this.photo,
      this.photoLink,
      this.gender,
      this.follows,
      this.followers});

  GridViewModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uzaklik = json['uzaklik'];
    bio = json['bio'];
    photo = json['photo'];
    photoLink = json['photo_link'];
    gender = json['gender'];
    follows = json['follows'];
    followers = json['followers'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['uzaklik'] = uzaklik;
    data['bio'] = bio;
    data['photo'] = photo;
    data['photo_link'] = photoLink;
    data['gender'] = gender;
    data['follows'] = follows;
    data['followers'] = followers;
    return data;
  }
}
