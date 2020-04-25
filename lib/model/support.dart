class SupportModel {
  int id;
  String imageUrl;
  String title;
  String desc;
  bool isDetailOn;

  SupportModel(
      {this.id, this.imageUrl, this.title, this.desc, this.isDetailOn});

  SupportModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image_url'];
    title = json['title'];
    desc = json['desc'];
    isDetailOn = json['is_detail_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image_url'] = this.imageUrl;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['is_detail_on'] = this.isDetailOn;
    return data;
  }
}
