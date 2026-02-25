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
        'Welcome to Bali, bra bra bra bra'
        ' description, description, description and description from descriptions '
        ' lasjdhfljsdjhf;lakdhf; lajhdf;l aldjfakdfjaqljkejqn.',
    category: 'Beach',
    image: 'assets/images/bali.jpg',
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
        'dihqdfnq wfjqh;wefq;nwefqwe qwjefqhdf qwefq;jefq wefq'
        ' qofiqpkpqc qwojejq wofakndc qdf doifjqjf qefojqf qoiefqfmq weqefijqw '
        ' qweoijf ijamcpadvlspds d vosdjva pdjaknds sda pasdjf',
    category: 'City',
    image: 'assets/images/paris.jpg',
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
        'asdn apjada asdja sdcalqjnd asdjna aojsdmndfanansasdnknadna,smd aad'
        ' Dhnasjd ajsdknancosd pAOKASFIJPlajsf  [aijifjsdja asodfj]sda sdasdsd'
        ' sdfad; sdfh.',
    category: 'Culture',
    image: 'assets/images/tokyo.jpg',
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
        'lasdf asdfhadfa dflha foahsfN ASFasjfASF asjlksndasasd valsdvas asdih'
        ' be alja asdjasdv sdhsdfjasoidasdv  psadf asddoi asdfiasjdfasdnl'
        ' sdvsjdvsdkv;skdlvpj of',
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
        'sdfalskdfla asohsdvo sadivhsufh siughaoshdv sdoha asudfgha sduahu[a ]'
        ' sdojalskv asdvhasv aosvha aoisvaosdv paosivapiodsv paoi.',
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
        'anasjh sadjalsd asdlihaljsda dh[AUPI AIPFASKJDF] ASDFASD FSDJ ouhf '
        ' sdfhasd asdhasdf asdjhpiosda sdhsodiha sdpaod aosdaosdhvs dvhsdvhasd .',
    category: 'Mountain',
    image: 'assets/images/everest.jpg',
    price: 860,
    rating: 4.9,
    reviews: 510,
    days: 9,
  ),
];
