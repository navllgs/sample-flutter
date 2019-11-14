import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static final List<Location> items = [
    Location(
        name: 'Arashiyama Bamboo Grove',
        url:
            'https://vignette.wikia.nocookie.net/naruto/images/2/21/Sasuke_Part_1.png/revision/latest?cb=20170716092103',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text:
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of kyoto, the sight\'s pleasure extend beyond the visual realm',
          ),
          LocationFact(
            title: 'How to Get There',
            text:
                'Kyoto airport, with several terminals, is locatiod 16 kilometers south of the city and is also known as Kyoto, Kyoto can also be reached by transport links from other regional airports.',
          ),
        ]),
    Location(
        name: "Shibuya Crossing",
        url:
            "https://res.klook.com/image/upload/fl_lossy.progressive/q_auto/f_auto/c_fill/blogen/2018/05/Image-uploaded-from-iOS-1-copy.jpg",
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'The first thing to see in Tokyo is the Shibuya Crossing! Have your camera ready and capture the chaotic transfer from one avenue to another. This is also the hub to all the major shopping and dining areas in Tokyo!'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'If you’re planning on scouting the Shibuya area for places to shop and dine, set your designated meeting place over at the Hachiko statue – located right outside the train station by the crossing!')
        ]),
    Location(
        name: "Hakone",
        url:
            "https://res.klook.com/image/upload/fl_lossy.progressive/q_auto/f_auto/c_fill/blogen/2018/05/C0013T01-2.jpg",
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Trade in the busy streets of Tokyo for a calming nature trek to Hakone! Spend your afternoon cruising through Lake Ashi and hopefully catch a glimpse of the beautiful Mount Fuji.'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Don’t miss out on a photo-op by the Tori Gate facing Lake Ashi! Though the queue might be long, the scenery is stunning and is 100% #travelgoals! For some inspiration, check out Alex’s Instagram photo!')
        ]),
    Location(
        name: "Gotemba Premium Outlets",
        url:
            "https://res.klook.com/image/upload/fl_lossy.progressive/q_auto/f_auto/c_fill/blogen/2018/05/C0038T01-2.jpg",
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text: 'Shop til you drop at the Gotemba Premium Outlets!'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'On the way back to Tokyo from Hakone, stop by the Gotemba Shopping Outlets and enjoy the best deals from some of your favorite brands! Shops in the city can’t beat these prices!')
        ]),
    Location(
        name: "Asakusa",
        url:
            "https://res.klook.com/image/upload/fl_lossy.progressive/q_auto/f_auto/c_fill/blogen/2018/05/Screen-Shot-2018-05-07-at-12.45.47-AM-copy.jpg",
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Get your fill of Japanese history at one of Tokyo’s most historical landmarks – Asakusa!'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Here you’ll see the Sensoji Temple, the oldest Buddhist temple in the country, and as well as Nakamise, a busy shopping street perfect for all your pasalubong needs! This area gets crowded quickly, so make sure you get here bright and early!')
        ]),
    Location(
        name: "Tokyo Skytree",
        url:
            "https://res.klook.com/image/upload/fl_lossy.progressive/q_auto/f_auto/c_fill/blogen/2018/05/C0011T01-2.jpg",
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'If Alex can do it, so can you! Head on down to the Tokyo Skytree and test your tolerance for heights!'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'The panoramic views from the world’s tallest tower will definitely make you feel like you’re on top of the world!')
        ])
  ];

  static FetchAny() {
    return MockLocation.items[0];
  }

  static FetchAll(){
    return MockLocation.items;
  }
}
