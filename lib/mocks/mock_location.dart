import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static FetchAny() {
    return Location(
        name: 'Arashiyama Bamboo Grove',
        url: 'https://vignette.wikia.nocookie.net/naruto/images/2/21/Sasuke_Part_1.png/revision/latest?cb=20170716092103',
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
        ]);
  }
}
