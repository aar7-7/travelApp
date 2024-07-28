
class TravelModel{
  String?  name;
  String location;
  String img;
  String description;
  String distance;
  String rating;
  String temp;
  String price;
  TravelModel(
  {
    required this.name,
    required this.location,
    required this.img,
    required this.description,
    required this.distance,
    required this.rating,
    required this.temp,
    required this.price,
  }
);
}
var loremIpsum = """"Lorem ipsum dolor sit amet. Est nemo adipisci aut minima illo et animi eius in sunt saepe a autem reiciendis hic vero quos qui voluptatem magnam. Aut illum exercitationem sed possimus consequatur ea voluptates tenetur et autem excepturi eos similique tempore eum iusto exercitationem et eligendi omnis.

Quo necessitatibus incidunt At minus nihil ut eius dolore qui commodi voluptas eos voluptate blanditiis. Qui iure mollitia nam harum distinctio ut eveniet debitis eos sint quisquam. Hic quod reiciendis sit veniam omnis vel repellat beatae sit unde soluta ut aperiam voluptatem aut consequatur aliquid aut dolorem rerum? Rem rerum mollitia est repellendus dolor ut possimus galisum.

Qui quod magni est aspernatur quia et consequuntur odio quo minima voluptas non repellat quibusdam. Id dolorum sint sit voluptates totam qui quae internos est sint molestias in deleniti voluptas. Est quas dolorem non consequatur voluptatem non deleniti perspiciatis ab animi veniam sed quia quaerat a omnis molestiae sed quaerat ipsa?""";
List<TravelModel> travelList = [
  TravelModel(
      name: 'New York',
      location: 'US-united states',
      img: 'assets/images/newYork.jpeg',
      description: loremIpsum,
      distance: '7',
      rating: '10',
      temp: '25',
      price: '1250'
  ),
  TravelModel(
      name: 'Tehran',
      location: 'IR-Tehran',
      img: 'assets/images/tehran.jpeg',
      description: loremIpsum,
      distance: '20',
      rating: '5',
      temp: '39',
      price: '12500'
  ),
  TravelModel(
      name: 'Paris',
      location: 'FR-Paris',
      img: 'assets/images/paris.jpeg',
      description: loremIpsum,
      distance: '6',
      rating: '9.5',
      temp: '30',
      price: '8000'
  ),
  TravelModel(
      name: 'Rome',
      location: 'IT-Rome',
      img: 'assets/images/rome.jpeg',
      description: loremIpsum,
      distance: '14',
      rating: '8',
      temp: '20',
      price: '3050'
  )
];
