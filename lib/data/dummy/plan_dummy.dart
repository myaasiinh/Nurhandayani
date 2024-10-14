import '../model_responses/plan_model_responses.dart';

class PlanDummy {
  // Data dummy untuk rencana atau event musik
  static final List<PlanModelResponses> dummyPlans = [
    PlanModelResponses(
      id: 1,
      eventName: "BTS Concert",
      date: "15 October 2024",
      time: "19:00",
      location: "Seoul, South Korea",
      description: "BTS's world tour is coming to Seoul! Get ready for an unforgettable night with your favorite hits and spectacular performances.",
      price: 3188.68,
      imageUrl: "assets/images/bts_concert.jpg",
    ),
    PlanModelResponses(
      id: 2,
      eventName: "Taylor Swift Tour",
      date: "25 October 2024",
      time: "20:00",
      location: "Los Angeles, USA",
      description: "Taylor Swift is bringing her Eras Tour to LA! Don't miss the chance to see her live, performing all your favorite songs.",
      price: 2899.99,
      imageUrl: "assets/images/taylor_swift_concert.jpg",
    ),
    PlanModelResponses(
      id: 3,
      eventName: "Maroon 5 Live",
      date: "5 November 2024",
      time: "21:00",
      location: "New York, USA",
      description: "Join Maroon 5 for an exciting live performance in New York City. This is a concert you won’t want to miss!",
      price: 1999.50,
      imageUrl: "assets/images/maroon5_concert.jpg",
    ),
    // Anda bisa menambahkan lebih banyak data dummy di sini
  ];
}
