class CoachListData {
  String firstName;
  String lastName;
  String contact;

  CoachListData({
    required this.firstName,
    required this.lastName,
    required this.contact,
  });

  factory CoachListData.fromJson(Map<String, dynamic> json) {
    return CoachListData(
      firstName: json['firstName'],
      lastName: json['lastName'],
      contact: json['phoneNumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': contact,
    };
  }
}
