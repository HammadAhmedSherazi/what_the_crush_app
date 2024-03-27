import 'package:equatable/equatable.dart';
class Interest extends Equatable {
  const Interest({
    required this.name,
    required this.image,
  });
  final String name;
  final String image;

  @override
  List<Object?> get props => [name, image];
}

const List<Interest> interests = [
  Interest(
    name: 'photography',
    image: 'assets/images/photography.png',
  ),
  Interest(
    name: 'shopping',
    image: 'assets/images/shopping.png',
  ),
  Interest(
    name: 'karaoke',
    image: 'assets/images/karaoke.png',
  ),
  Interest(
    name: 'fitness',
    image: 'assets/images/fitness1.png',
  ),
  Interest(
    name: 'cooking',
    image: 'assets/images/cooking.png',
  ),
  Interest(
    name: 'sports',
    image: 'assets/images/sports.png',
  ),
  Interest(
    name: 'workingout',
    image: 'assets/images/workingout.png',
  ),
  Interest(
    name: 'swimming',
    image: 'assets/images/swimming.png',
  ),
  Interest(
    name: 'art',
    image: 'assets/images/art.png',
  ),
  Interest(
    name: 'traveling',
    image: 'assets/images/traveling.png',
  ),
  Interest(
    name: 'adventure',
    image: 'assets/images/adventure.png',
  ),
  Interest(
    name: 'music',
    image: 'assets/images/music.png',
  ),
  Interest(
    name: 'partying',
    image: 'assets/images/partying.png',
  ),
  Interest(
    name: 'video gaming',
    image: 'assets/images/videogaming.png',
  ),
];
