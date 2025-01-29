// I don't know the best way to make an text adventure game but i don't think there is one even
import 'package:textventure/story_class.dart';

class BookKeeper {
  // Since the game will be more or less hardcoded, I'm gonna do everything inside this class
  int _currentStoryLineNumber = 0;

  final List<Story> _stories = [
    // START: Entrance
    Story(
      opener: "You stand at the entrance of the ancient, crumbling dungeon.",
      content:
          "The air is thick with the scent of mildew, and the stone walls seem to breathe with an eerie chill. Faint whispers echo from the depths, just beyond your reach. "
          "A rusted, iron door with intricate carvings marks the entrance, slightly ajar. The dim light from your lantern flickers as you hesitate before stepping inside. "
          "As you push the door open, it creaks loudly, sending a wave of dust swirling into the air. The corridor stretches out before you, its stone floor slick with moisture. "
          "The walls are lined with faded torches, many of them long extinguished, though a few still smolder with a faint, dying glow.",
      storylineNumber: 0,
      choiceText1: 'The left path, covered in ancient tapestries',
      choiceText2: 'The right path leading down a series of stone steps',
    ),

    // ODD PATH: (1 -> 3 -> 5 -> 7)
    Story(
      opener:
          "You walk down the left path, your boots crunching on the bits of debris scattered on the floor.",
      content:
          "The air grows colder as you approach the faded tapestries. As you reach out to touch one, it falls to the ground in a heap of dust, revealing strange symbols carved into the stone wall beneath. "
          "The symbols seem to shift and pulse faintly in the dim light. You feel an odd tug in your chest, as if something is calling to you from the wall.",
      storylineNumber: 1,
      choiceText1:
          'You decide to decipher the symbols and investigate further.',
      choiceText2: 'You step back, feeling uneasy, and continue down the path.',
    ),
    Story(
      opener:
          "You decipher the symbols carefully, piecing together their meaning.",
      content:
          "The symbols seem to form a map—a map leading deeper into the dungeon, to a treasure hidden beyond the tapestries. "
          "As you trace the last symbol, the stone wall in front of you groans and begins to slide open, revealing a hidden passageway.",
      storylineNumber: 3,
      choiceText1:
          'You enter the newly revealed passageway, eager to find the treasure.',
      choiceText2:
          'You feel uneasy about this hidden path and decide to leave.',
    ),
    Story(
      opener:
          "You step into the hidden passageway, the walls closing in around you as the dim light from your lantern barely illuminates the narrow corridor.",
      content:
          "The air is thick and musty, and the stone walls seem to press in on you as you move deeper. The passage twists and turns, and you begin to hear the faint sound of dripping water echoing in the distance. "
          "As you reach the end of the corridor, you find yourself in a small, circular chamber. At the center, an ornate chest rests upon a pedestal, its surface adorned with jewels that catch the light of your lantern. The chest hums softly as if it's alive, awaiting your touch.",
      storylineNumber: 5,
      choiceText1:
          'You approach the chest, heart racing, ready to claim your prize.',
      choiceText2:
          'You hesitate, wondering if there might be a trap waiting for you.',
    ),
    Story(
      opener:
          "You slowly walk up to the ornate chest, feeling a strange pull toward it.",
      content:
          "The chest's surface seems to shimmer, and as you lay your hands on the lid, you feel a surge of energy rush through you. With a soft click, the chest opens, revealing piles of gold coins, gemstones, and ancient artifacts. "
          "At the very top lies a gleaming sword with a ruby-encrusted hilt, its blade pulsing with a faint light. You've found the treasure—your heart swells with triumph.",
      storylineNumber: 7,
      choiceText1:
          'You take the sword and the treasure, knowing your adventure is complete.',
      choiceText2:
          'You leave the treasure untouched, overwhelmed by the immense power before you.',
    ),

    // EVEN PATH: (2 -> 4 -> 6 -> 8)
    Story(
      opener:
          "You cautiously descend the stone steps, the sound of your footsteps echoing through the cavernous space.",
      content:
          "At the bottom, the air is heavy with moisture, and the ground is slick with slime. The cavern stretches out before you, with two glowing orbs hovering in the distance, their light casting strange, long shadows. "
          "As you move closer, you notice something glimmering in the corner of the room, half-buried in the mud.",
      storylineNumber: 2,
      choiceText1: 'You walk toward the glimmering object, curiosity piqued.',
      choiceText2:
          'You decide to approach the floating orbs, wondering what they are.',
    ),
    Story(
      opener: "You walk towards the glimmering object, your eyes fixed on it.",
      content:
          "As you dig it out of the mud, you uncover a golden key, its surface etched with strange markings. "
          "It looks ancient, and yet it seems to hum with energy. Just as you pocket the key, a deep rumble shakes the cavern. The orbs above you flicker and start moving toward you.",
      storylineNumber: 4,
      choiceText1: 'You rush back to the stairs, fearing the orbs are hostile.',
      choiceText2:
          'You stand your ground, preparing for whatever the orbs may bring.',
    ),
    Story(
      opener:
          "You gather the treasure, your hands trembling with excitement and disbelief.",
      content:
          "The chest closes behind you, as if it was never opened. The chamber begins to shake violently, and the walls around you crack. The floor beneath your feet begins to crumble, but you manage to keep your footing as you clutch the treasure in your arms. "
          "With one last leap, you escape the collapsing chamber, emerging back into the dungeon entrance—victorious, with treasure in hand. You've survived, you've conquered, and you've claimed the ultimate prize.",
      storylineNumber: 6,
      choiceText1: 'You leave the dungeon, your adventure at an end.',
      choiceText2:
          'You turn back, unsure if the dungeon still holds more secrets.',
    ),
    Story(
      opener:
          "You step back from the collapsing cavern, staring at the dungeon walls one last time.",
      content:
          "The weight of your choices settles on you. Whether you took the treasure or left it behind, the journey has changed you forever. As you step into the light, you wonder—was this just the beginning of something greater?",
      storylineNumber: 8,
      choiceText1: 'You walk into the horizon, ready for your next adventure.',
      choiceText2: 'You turn back one last time, feeling a pull to return.',
    ),
  ];

  // Getters
  String getOpener() {
    return _stories[_currentStoryLineNumber].opener;
  }

  String getContent() {
    return _stories[_currentStoryLineNumber].content;
  }

  int getStoryLineNumber() {
    return _stories[_currentStoryLineNumber].storylineNumber;
  }

  String getChoiceOne() {
    return _stories[_currentStoryLineNumber].choiceText1;
  }

  String getChoiceTwo() {
    return _stories[_currentStoryLineNumber].choiceText2;
  }

  void incrementStoryNumber(int chosenPath) {
    if (_currentStoryLineNumber == 0) {
      // First choice sets the path
      _currentStoryLineNumber = (chosenPath == 1) ? 1 : 2;
    } else {
      if (_currentStoryLineNumber % 2 == 1) {
        _currentStoryLineNumber += 2;
      } else {
        _currentStoryLineNumber += 2;
      }
    }
    print("New story: $_currentStoryLineNumber");
  }
}
