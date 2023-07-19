public type Book record {|
    readonly int id;
    string name;
    string author;
    string genre;
    string publisher;
    string description;
    boolean isAvailable;
|};

public final table<Book> key(id) bookStore = table [
    {
        id: 1,
        name: "Kunde, Wyman and Doyle",
        author: "Clotilda Breens",
        genre: "Comedy",
        publisher: "Brightdog",
        description: "Ephippiorhynchus mycteria",
        isAvailable: true
    },
    {
        id: 2,
        name: "Crooks and Sons",
        author: "Hernando Woodyatt",
        genre: "Comedy|Romance",
        publisher: "Eayo",
        description: "Phylurus milli",
        isAvailable: false
    },
    {
        id: 3,
        name: "Walker-White",
        author: "Tore Keel",
        genre: "Children|Drama|Fantasy",
        publisher: "Eimbee",
        description: "Choloepus hoffmani",
        isAvailable: true
    },
    {
        id: 4,
        name: "Lakin LLC",
        author: "Lefty Bruinemann",
        genre: "Drama",
        publisher: "Mudo",
        description: "Gazella thompsonii",
        isAvailable: true
    },
    {
        id: 5,
        name: "Lakin, Koepp and O'Conner",
        author: "Giorgia Lambarton",
        genre: "Comedy|Romance",
        publisher: "Youbridge",
        description: "Laniarius ferrugineus",
        isAvailable: true
    },
    {
        id: 6,
        name: "Reilly, Feil and Huels",
        author: "Brett Bengoechea",
        genre: "Drama|Romance",
        publisher: "Zoomcast",
        description: "Gymnorhina tibicen",
        isAvailable: false
    },
    {
        id: 7,
        name: "Blanda Inc",
        author: "Roxanna Spurden",
        genre: "Drama",
        publisher: "Meezzy",
        description: "Hippotragus niger",
        isAvailable: false
    },
    {
        id: 8,
        name: "Reynolds, Stroman and Bashirian",
        author: "Ruddy Vasechkin",
        genre: "Drama",
        publisher: "Flipopia",
        description: "Gorilla gorilla",
        isAvailable: false
    },
    {
        id: 9,
        name: "Bahringer-Breitenberg",
        author: "Bernete Oman",
        genre: "Comedy|Drama|Romance",
        publisher: "Zoomcast",
        description: "Bettongia penicillata",
        isAvailable: false
    },
    {
        id: 10,
        name: "Lubowitz Inc",
        author: "Elton Lindup",
        genre: "Fantasy",
        publisher: "Dabjam",
        description: "Acanthaster planci",
        isAvailable: false
    }
];
