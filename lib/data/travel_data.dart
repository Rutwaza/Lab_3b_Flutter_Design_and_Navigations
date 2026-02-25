import '../models/destination.dart';

const travelCategories = [
  'All',
  'Beach',
  'City',
  'Mountain',
  'Desert',
  'Adventure',
  'Culture',
];

const destinations = [
  Destination(
    id: 'bali',
    title: 'Bali Escape',
    location: 'Bali, Indonesia',
    description:
        'A lush island retreat with turquoise waters, surf breaks, and temple'
        ' sunsets. Spend your days on hidden beaches, explore rice terraces,'
        ' and end evenings with local cuisine by the sea.',
    category: 'Beach',
    image: 'assets/images/bali.png',
    price: 340,
    rating: 4.8,
    reviews: 1280,
    days: 5,
  ),
  Destination(
    id: 'paris',
    title: 'Paris Lights',
    location: 'Paris, France',
    description:
        'Classic boulevards, iconic landmarks, and an effortless sense of'
        ' style. Enjoy riverside walks, gallery visits, and cozy cafes tucked'
        ' between historic streets.',
    category: 'City',
    image: 'assets/images/paris.png',
    price: 520,
    rating: 4.7,
    reviews: 940,
    days: 4,
  ),
  Destination(
    id: 'tokyo',
    title: 'Tokyo Pulse',
    location: 'Tokyo, Japan',
    description:
        'Neon streets meet tranquil gardens in this high-energy capital.'
        ' Discover street food, modern art, and timeless shrines with seamless'
        ' city transit.',
    category: 'Culture',
    image: 'assets/images/tokyo.png',
    price: 610,
    rating: 4.9,
    reviews: 1575,
    days: 6,
  ),
  Destination(
    id: 'iceland',
    title: 'Iceland Aurora',
    location: 'Reykjavik, Iceland',
    description:
        'Chase northern lights across dramatic landscapes. Geothermal lagoons,'
        ' volcanic beaches, and glacier hikes create a trip filled with'
        ' unforgettable contrasts.',
    category: 'Adventure',
    image: 'assets/images/iceland.png',
    price: 780,
    rating: 4.6,
    reviews: 620,
    days: 7,
  ),
  Destination(
    id: 'sahara',
    title: 'Sahara Dunes',
    location: 'Merzouga, Morocco',
    description:
        'Golden dunes and starry skies define this desert journey. Ride across'
        ' the sands, sip mint tea by the fire, and sleep in luxury camps.',
    category: 'Desert',
    image: 'assets/images/sahara.png',
    price: 410,
    rating: 4.5,
    reviews: 430,
    days: 3,
  ),
  Destination(
    id: 'everest',
    title: 'Everest Base',
    location: 'Khumbu, Nepal',
    description:
        'A legendary trek through alpine villages and panoramic ridges.'
        ' Experience crisp mountain air, prayer flags, and awe-inspiring peaks.',
    category: 'Mountain',
    image: 'assets/images/everest.png',
    price: 860,
    rating: 4.9,
    reviews: 510,
    days: 9,
  ),
];
