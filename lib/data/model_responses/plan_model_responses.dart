class PlanModelResponses {
  final int id;
  final String eventName;
  final String date;
  final String time;
  final String location;
  final String description;
  final double price;
  final String imageUrl;

  PlanModelResponses({
    required this.id,
    required this.eventName,
    required this.date,
    required this.time,
    required this.location,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // Fungsi untuk konversi dari JSON ke PlanModelResponses
  factory PlanModelResponses.fromJson(Map<String, dynamic> json) {
    return PlanModelResponses(
      id: json['id'],
      eventName: json['eventName'],
      date: json['date'],
      time: json['time'],
      location: json['location'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

  // Fungsi untuk konversi dari PlanModelResponses ke JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'eventName': eventName,
      'date': date,
      'time': time,
      'location': location,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
