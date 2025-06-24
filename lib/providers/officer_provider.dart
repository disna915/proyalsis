import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/officer_model.dart';

class OfficerProvider with ChangeNotifier {
  List<Officer> _officers = [];
  bool _isLoading = true;

  List<Officer> get officers => _officers;
  bool get isLoading => _isLoading;

  void loadOfficers() async {
    await Future.delayed(const Duration(seconds: 2));
    final jsonData = dummyJson;
    _officers = (jsonDecode(jsonData) as List)
        .map((e) => Officer.fromJson(e))
        .toList();
    _isLoading = false;
    notifyListeners();
  }
}

const dummyJson = '''[
  {
    "id": "1",
    "name": "John Doe",
    "designation": "Inspector",
    "department": "Investigation",
    "contactDetails": {
      "email": "john.doe@example.com",
      "phone": "+91-9000011111"
    },
    "assignments": [
      {
        "title": "Robbery Case",
        "location": "Delhi",
        "status": "Active"
      },
      {
        "title": "Fraud Investigation",
        "location": "Mumbai",
        "status": "Closed"
      }
    ]
  },
  {
    "id": "2",
    "name": "Anjali Sharma",
    "designation": "Sub-Inspector",
    "department": "Cyber Crime",
    "contactDetails": {
      "email": "anjali.sharma@example.com",
      "phone": "+91-9000022222"
    },
    "assignments": [
      {
        "title": "Online Scam",
        "location": "Pune",
        "status": "Active"
      }
    ]
  },
  {
    "id": "3",
    "name": "Ravi Kumar",
    "designation": "DSP",
    "department": "Traffic",
    "contactDetails": {
      "email": "ravi.kumar@example.com",
      "phone": "+91-9000033333"
    },
    "assignments": [
      {
        "title": "Highway Surveillance",
        "location": "Chennai",
        "status": "Ongoing"
      }
    ]
  },
  {
    "id": "4",
    "name": "Priya Singh",
    "designation": "Inspector",
    "department": "Women Safety",
    "contactDetails": {
      "email": "priya.singh@example.com",
      "phone": "+91-9000044444"
    },
    "assignments": [
      {
        "title": "Women Helpline Setup",
        "location": "Bangalore",
        "status": "Planned"
      }
    ]
  },
  {
    "id": "5",
    "name": "Amit Desai",
    "designation": "SI",
    "department": "Narcotics",
    "contactDetails": {
      "email": "amit.desai@example.com",
      "phone": "+91-9000055555"
    },
    "assignments": [
      {
        "title": "Drug Raid Operation",
        "location": "Goa",
        "status": "Active"
      },
      {
        "title": "Undercover Mission",
        "location": "Pune",
        "status": "Confidential"
      }
    ]
  },
  {
    "id": "6",
    "name": "Neha Verma",
    "designation": "Sub-Inspector",
    "department": "Juvenile",
    "contactDetails": {
      "email": "neha.verma@example.com",
      "phone": "+91-9000066666"
    },
    "assignments": [
      {
        "title": "Youth Counseling",
        "location": "Delhi",
        "status": "Completed"
      }
    ]
  },
  {
    "id": "7",
    "name": "Arun Pillai",
    "designation": "Inspector",
    "department": "CID",
    "contactDetails": {
      "email": "arun.pillai@example.com",
      "phone": "+91-9000077777"
    },
    "assignments": [
      {
        "title": "Murder Case A21",
        "location": "Kerala",
        "status": "Ongoing"
      }
    ]
  },
  {
    "id": "8",
    "name": "Sunita Reddy",
    "designation": "SI",
    "department": "Anti-Terrorism",
    "contactDetails": {
      "email": "sunita.reddy@example.com",
      "phone": "+91-9000088888"
    },
    "assignments": [
      {
        "title": "Bomb Squad Training",
        "location": "Hyderabad",
        "status": "Active"
      }
    ]
  },
  {
    "id": "9",
    "name": "Manoj Mehta",
    "designation": "DSP",
    "department": "Crime Branch",
    "contactDetails": {
      "email": "manoj.mehta@example.com",
      "phone": "+91-9000099999"
    },
    "assignments": [
      {
        "title": "Forgery Ring Investigation",
        "location": "Ahmedabad",
        "status": "In Progress"
      }
    ]
  },
  {
    "id": "10",
    "name": "Divya Nair",
    "designation": "Inspector",
    "department": "Cyber Crime",
    "contactDetails": {
      "email": "divya.nair@example.com",
      "phone": "+91-9000000000"
    },
    "assignments": [
      {
        "title": "Dark Web Monitoring",
        "location": "Trivandrum",
        "status": "Active"
      },
      {
        "title": "Online Abuse Case",
        "location": "Cochin",
        "status": "Reported"
      }
    ]
  }
]''';
// Paste the full JSON data here
