// import 'dart:convert';

// class GuideServices {
//   int id;
//   String title;
//   String description;
//   DateTime eventDate;
//   String phone;
//   String address;

//   GuideServices({ this.id, this.title, this.description, this.eventDate, this.phone, this.address });

//   factory GuideServices.fromJson(Map<String, dynamic> map) {
//     return GuideServices(id: map["id"], title: map["title"], description: map["description"],
//     eventDate: map["eventDate"], phone: map["phone"], address: map["address"]);
//   }

//   Map<String, dynamic> toJson() {
//   return {"id": id, "title": title, "code": code};
//   }

//   @override
//   String toString() {
//     return 'Theme{id: $id, name: $name, code: $code}';
//   }

//   static List<GuideServices> guideServicesFromJson(String jsonData) {
//     final data = json.decode(jsonData);
//     return List<GuideServices>.from(data.map((item) => GuideServices.fromJson(item)));
//   }

//   static String guideServicesJson(GuideServices data) {
//     final jsonData = data.toJson();
//     return json.encode(jsonData);
//   }

// }