class CoachListData {
  String firstName;
  String contact;

  CoachListData({
    required this.firstName,
    required this.contact,
  });

  factory CoachListData.fromJson(Map<String, dynamic> json) {
    return CoachListData(
      firstName: json['firstName'],
      contact: json['phoneNumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'phoneNumber': contact,
    };
  }
}
