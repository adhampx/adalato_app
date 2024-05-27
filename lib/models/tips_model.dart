class TipModel {
  String tipId;
  String title;
  String description;

  TipModel({
    required this.tipId,
    required this.title,
    required this.description,
  });

  // Convert a TipModel instance to a map
  Map<String, dynamic> toMap() {
    return {
      'tipId': tipId,
      'title': title,
      'description': description,
    };
  }

  // Create a TipModel instance from a map
  factory TipModel.fromMap(Map<String, dynamic> map) {
    return TipModel(
      tipId: map['tipId'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
    );
  }

  // // Convert a Firestore document snapshot to a TipModel instance
  // factory TipModel.fromDocument(DocumentSnapshot doc) {
  //   final data = doc.data() as Map<String, dynamic>;
  //   return TipModel.fromMap(data);
  // }

  // // Convert a TipModel instance to a Firestore document snapshot
  // Map<String, dynamic> toDocument() {
  //   return toMap();
  // }
}

List<TipModel> tips = [
  TipModel(
    tipId: '1',
    title: 'Stay Hydrated',
    description: 'Drink at least 8 glasses of water a day to stay hydrated.',
  ),
  TipModel(
    tipId: '2',
    title: 'Warm-Up',
    description: 'Always warm-up before your workout to prevent injuries.',
  ),
  TipModel(
    tipId: '3',
    title: 'Cool Down',
    description:
        'Don’t forget to cool down after your workout to help your muscles recover.',
  ),
  TipModel(
    tipId: '4',
    title: 'Balanced Diet',
    description:
        'Maintain a balanced diet to fuel your workouts and support recovery.',
  ),
  TipModel(
    tipId: '5',
    title: 'Consistency is Key',
    description: 'Stay consistent with your workouts to see the best results.',
  ),
  TipModel(
    tipId: '6',
    title: 'Mix It Up',
    description:
        'Vary your workouts to keep them interesting and target different muscle groups.',
  ),
  TipModel(
    tipId: '7',
    title: 'Proper Form',
    description:
        'Always use proper form to avoid injuries and get the most out of your exercises.',
  ),
  TipModel(
    tipId: '8',
    title: 'Rest Days',
    description:
        'Include rest days in your routine to allow your body to recover.',
  ),
  TipModel(
    tipId: '9',
    title: 'Set Goals',
    description: 'Set clear, achievable goals to stay motivated.',
  ),
  TipModel(
    tipId: '10',
    title: 'Track Progress',
    description: 'Keep track of your progress to see how far you’ve come.',
  ),
  TipModel(
    tipId: '11',
    title: 'Get Enough Sleep',
    description:
        'Aim for 7-8 hours of sleep each night to support recovery and performance.',
  ),
  TipModel(
    tipId: '12',
    title: 'Listen to Your Body',
    description:
        'Pay attention to your body’s signals and adjust your workouts as needed.',
  ),
  TipModel(
    tipId: '13',
    title: 'Stay Positive',
    description: 'Maintain a positive attitude to keep yourself motivated.',
  ),
  TipModel(
    tipId: '14',
    title: 'Gradual Progression',
    description:
        'Increase the intensity of your workouts gradually to avoid overtraining.',
  ),
  TipModel(
    tipId: '15',
    title: 'Stay Active',
    description:
        'Find ways to stay active throughout the day, not just during workouts.',
  ),
  TipModel(
    tipId: '16',
    title: 'Focus on Breathing',
    description:
        'Use proper breathing techniques to improve performance and reduce fatigue.',
  ),
  TipModel(
    tipId: '17',
    title: 'Eat Protein',
    description: 'Consume enough protein to support muscle repair and growth.',
  ),
  TipModel(
    tipId: '18',
    title: 'Stretch Regularly',
    description:
        'Incorporate stretching into your routine to improve flexibility and prevent injuries.',
  ),
  TipModel(
    tipId: '19',
    title: 'Stay Motivated',
    description:
        'Find a workout buddy or join a class to keep yourself motivated.',
  ),
  TipModel(
    tipId: '20',
    title: 'Enjoy the Process',
    description: 'Enjoy the journey and celebrate your progress along the way.',
  ),
];
