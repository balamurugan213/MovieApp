class Movies {
  String imageUrl;
  String movie_name;
  String movie_category;
  String description;
  double imdb;
  int rotten;
  String sensor;
  int likes;

  Movies(
      {this.imageUrl,
      this.movie_name,
      this.movie_category,
      this.description,
      this.sensor,
      this.imdb,
      this.rotten,
      this.likes});
}

class Year {
  final String year;
  final String yearImageUrl;

  Year({this.yearImageUrl, this.year});
}

class Celebrity {
  final String celebrity;
  final String celeImageUrl;

  Celebrity({
    this.celebrity,
    this.celeImageUrl,
  });
}

List<Celebrity> celebrities = [
  Celebrity(
      celebrity: "Leonardo Dticaprio",
      celeImageUrl: "assets/LeonardoDticaprio.jpg"),
  Celebrity(celebrity: "Tom Hardy", celeImageUrl: "assets/TomHardy.jpg"),
  Celebrity(
      celebrity: "Christian Bale", celeImageUrl: "assets/ChristianBale.jpg"),
  // Celebrity(celebrity: "2016", celeImageUrl: "assets/2016.jpg"),
  // Celebrity(celebrity: "2015", celeImageUrl: "assets/2015.jpg")
];

List<Year> years = [
  Year(year: "2019", yearImageUrl: "assets/2019.jpg"),
  Year(year: "2018", yearImageUrl: "assets/2018.jpg"),
  Year(year: "2017", yearImageUrl: "assets/2017.jpg"),
  Year(year: "2016", yearImageUrl: "assets/2016.jpg"),
  Year(year: "2015", yearImageUrl: "assets/2015.jpg")
];

List<Movies> movies = [
  Movies(
    imageUrl: 'assets/birds_of_prey.jpg',
    movie_name: 'Birds OF Prey',
    movie_category: 'Action',
    sensor: 'R',
    imdb: 6.2,
    rotten: 78,
    description:
        'Birds of Prey (And The Fantabulous Emancipation of One Harley Quinn)[a] is a 2020 American superhero film based on the DC Comics team Birds of Prey. It is the eighth film in the DC Extended Universe and a follow-up to Suicide Squad (2016).',
  ),
  Movies(
    imageUrl: 'assets/rapsody.jpg',
    movie_name: 'Bohemian\nRhapsody',
    movie_category: 'Biography',
    sensor: 'PG-13',
    imdb: 8,
    rotten: 60,
    description:
        'Bohemian Rhapsody is a 2018 biographical drama film about Freddie Mercury, the lead singer of the British rock band Queen. It was directed by Bryan Singer from a screenplay by Anthony McCarten, and produced by Graham King and Queen manager Jim Beach.',
  ),
  Movies(
    imageUrl: 'assets/finding-dory.jpg',
    movie_name: 'Finding Dory',
    movie_category: 'adventure quest',
    sensor: 'PG',
    imdb: 7.3,
    rotten: 94,
    description:
        'Finding Dory is a 2016 American 3D computer-animated adventure film produced by Pixar Animation Studios and released by Walt Disney Pictures The film is a sequel/spinoff[8][9] to 2003s Finding Nemo and the film focuses on the amnesiac fish Dory, who journeys to be reunited with her parents.',
  ),
  Movies(
    imageUrl: 'assets/got.jpg',
    movie_name: 'Game Of Throns',
    movie_category: 'Fantancy Drama',
    sensor: 'TV-MA',
    imdb: 9.3,
    rotten: 89,
    description:
        'Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO. Set on the fictional continents of Westeros and Essos, Game of Thrones has several plots and a large ensemble cast and follows several story arcs. ',
  ),
  Movies(
    imageUrl: 'assets/money-heist.jpg',
    movie_name: 'Money Heist',
    movie_category: 'Netflix',
    sensor: 'TV-MA',
    imdb: 8.6,
    rotten: 86,
    description:
        'Wonder Woman is a 2017 American superhero film based on the DC Comics character of the same name, produced by DC Films in association with RatPac Entertainment and Chinese company Tencent Pictures, and distributed by Warner Bros. Pictures. It is the fourth installment in the DC Extended Universe (DCEU).',
  ),
  Movies(
    imageUrl: 'assets/wonderWomen.jpg',
    movie_name: 'Wonder Women',
    movie_category: 'DC comics',
    sensor: 'PG-13',
    imdb: 7.4,
    rotten: 93,
    description:
        'Wonder Woman is a 2017 American superhero film based on the DC Comics character of the same name, produced by DC Films in association with RatPac Entertainment and Chinese company Tencent Pictures, and distributed by Warner Bros. Pictures. It is the fourth installment in the DC Extended Universe (DCEU).',
  ),
  Movies(
    imageUrl: 'assets/maleficent.jpg',
    movie_name: 'Maleficent',
    movie_category: 'Disney',
    sensor: 'PG',
    imdb: 7.0,
    rotten: 54,
    description:
        'Wonder Woman is a 2017 American superhero film based on the DC Comics character of the same name, produced by DC Films in association with RatPac Entertainment and Chinese company Tencent Pictures, and distributed by Warner Bros. Pictures. It is the fourth installment in the DC Extended Universe (DCEU).',
  ),
  Movies(
    imageUrl: 'assets/big-hero.jpg',
    movie_name: 'Big Hero 6',
    movie_category: 'Disney & Marvel',
    sensor: 'PG',
    imdb: 7.8,
    rotten: 89,
    description:
        'Maleficent is a 2014 American dark fantasy film directed by Robert Stromberg from a screenplay by Linda Woolverton, and starring Angelina Jolie as the title character ,the film portrays the story from the perspective of the eponymous antagonist, depicting her conflicted relationship with the princess and king of a corrupt kingdom',
  ),
  Movies(
    imageUrl: 'assets/tangled.jpg',
    movie_name: 'Tangled',
    movie_category: 'Disney',
    sensor: 'PG',
    imdb: 7.7,
    rotten: 79,
    description:
        'Tangled is a 2010 American 3D computer-animated musical adventure film[2] produced by Walt Disney Animation Studios and released by Walt Disney Pictures. Loosely based on the German fairy tale "Rapunzel" in the collection of folk tales published by the Brothers Grimm, it is the 50th Disney animated feature film. the film tells the story of a lost, young princess with magical long blonde hair who yearns to leave her secluded tower. Against her mothers wishes, she accepts the aid of an intruder to take her out into the world which she has never seen.Before the films release, its title was changed from Rapunzel to Tangled, reportedly to market the film gender-neutrally.',
  ),
  Movies(
    imageUrl: 'assets/deadpool.jpg',
    movie_name: 'Deadpool',
    movie_category: 'Marvel',
    sensor: 'R',
    imdb: 8,
    rotten: 85,
    description:
        'Deadpool is a 2016 American superhero film based on the Marvel Comics character of the same name. Distributed by 20th Century Fox, it is the eighth film in the X-Men film series and the first standalone Deadpool film',
  ),
];
