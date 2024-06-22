class FetchSportResponse {
  String? id;
  String? name;
  String? imageUrl;
  bool? deleted;
  int? v;

  FetchSportResponse({
    this.id,
    this.name,
    this.imageUrl,
    this.deleted,
    this.v,
  });

  factory FetchSportResponse.fromJson(Map<String, dynamic> json) =>
      FetchSportResponse(
        id: json["_id"],
        name: json["name"],
        imageUrl: json["imageUrl"],
        deleted: json["deleted"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "imageUrl": imageUrl,
        "deleted": deleted,
        "__v": v,
      };
}
