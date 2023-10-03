class DataBuku {
  String author;
  String country;
  String imageLink;
  String language;
  String link;
  int pages;
  String title;
  int year;
  bool isBookmarked;

  DataBuku({
    required this.author,
    required this.country,
    required this.imageLink,
    required this.language,
    required this.link,
    required this.pages,
    required this.title,
    required this.year,
    required this.isBookmarked,
  });
}

var listBuku = [
  DataBuku(
    author: "Chinua Achebe",
    country: "Nigeria",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/things-fall-apart.jpg",
    language: "English",
    link: "https://en.wikipedia.org/wiki/Things_Fall_Apart",
    pages: 209,
    title: "Things Fall Apart",
    year: 1958,
    isBookmarked: true,
  ),
  DataBuku(
    author: "Samuel Beckett",
    country: "Republic of Ireland",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/molloy-malone-dies-the-unnamable.jpg",
    language: "French, English",
    link: "https://en.wikipedia.org/wiki/Molloy_(novel)",
    pages: 256,
    title: "Molloy, Malone Dies, The Unnamable, the trilogy",
    year: 1952,
    isBookmarked: true,
  ),
  DataBuku(
    author: "Jorge Luis Borges",
    country: "Argentina",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/ficciones.jpg",
    language: "Spanish",
    link: "https://en.wikipedia.org/wiki/Ficciones",
    pages: 224,
    title: "Ficciones",
    year: 1965,
    isBookmarked: false,
  ),
  DataBuku(
    author: "Emily Bront",
    country: "United Kingdom",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/wuthering-heights.jpg",
    language: "English",
    link: "https://en.wikipedia.org/wiki/Wuthering_Heights",
    pages: 342,
    title: "Wuthering Heights",
    year: 1847,
    isBookmarked: true,
  ),
  DataBuku(
    author: "Albert Camus",
    country: "Algeria, French Empire",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/l-etranger.jpg",
    language: "French",
    link: "https://en.wikipedia.org/wiki/The_Stranger_(novel)",
    pages: 185,
    title: "The Stranger",
    year: 1942,
    isBookmarked: true,
  ),
  DataBuku(
    author: "Joseph Conrad",
    country: "United Kingdom",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/nostromo.jpg",
    language: "English",
    link: "https://en.wikipedia.org/wiki/Nostromo",
    pages: 320,
    title: "Nostromo",
    year: 1904,
    isBookmarked: false,
  ),
  DataBuku(
    author: "Louis-Ferdinand Céline",
    country: "France",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/voyage-au-bout-de-la-nuit.jpg",
    language: "French",
    link: "https://en.wikipedia.org/wiki/Journey_to_the_End_of_the_Night",
    pages: 505,
    title: "Journey to the End of the Night",
    year: 1932,
    isBookmarked: true,
  ),
  DataBuku(
    author: "Miguel de Cervantes",
    country: "Spain",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/don-quijote-de-la-mancha.jpg",
    language: "Spanish",
    link: "https://en.wikipedia.org/wiki/Don_Quixote",
    pages: 1056,
    title: "Don Quijote De La Mancha",
    year: 1610,
    isBookmarked: true,
  ),
  DataBuku(
    author: "Geoffrey Chaucer",
    country: "England",
    imageLink:
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/the-canterbury-tales.jpg",
    language: "English",
    link: "https://en.wikipedia.org/wiki/The_Canterbury_Tales",
    pages: 544,
    title: "The Canterbury Tales",
    year: 1450,
    isBookmarked: false,
  ),
];
