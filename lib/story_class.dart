// This is just so we can structure the choices inside each story part
class Story {
  // Opener is the first line of the text, will usually indicate a position
  String opener;
  // The true content, what is happening etc
  String content;
  // Just a number so we can keep track
  int storylineNumber;
  // Each Story will have 2 choices to keep going
  String choiceText1;
  String choiceText2;

  Story(
      {required this.opener,
      required this.content,
      required this.storylineNumber,
      required this.choiceText1,
      required this.choiceText2});
}
