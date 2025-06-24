class Officer {
  final String id;
  final String name;
  final String designation;
  final String department;
  final ContactDetails contactDetails;
  final List<Assignment> assignments;

  Officer({
    required this.id,
    required this.name,
    required this.designation,
    required this.department,
    required this.contactDetails,
    required this.assignments,
  });

  factory Officer.fromJson(Map<String, dynamic> json) {
    return Officer(
      id: json['id'],
      name: json['name'],
      designation: json['designation'],
      department: json['department'],
      contactDetails: ContactDetails.fromJson(json['contactDetails']),
      assignments: (json['assignments'] as List)
          .map((e) => Assignment.fromJson(e))
          .toList(),
    );
  }
}

class ContactDetails {
  final String email;
  final String phone;

  ContactDetails({required this.email, required this.phone});

  factory ContactDetails.fromJson(Map<String, dynamic> json) {
    return ContactDetails(email: json['email'], phone: json['phone']);
  }
}

class Assignment {
  final String title;
  final String location;
  final String status;

  Assignment({required this.title, required this.location, required this.status});

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
      title: json['title'],
      location: json['location'],
      status: json['status'],
    );
  }
}
