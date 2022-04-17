class Genres {
  Genres({
      this.count, 
      this.next, 
      this.previous, 
      this.results,});

  Genres.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Results {
  Results({
      this.id, 
      this.name, 
      this.slug, 
      this.gamesCount, 
      this.imageBackground, 
      this.games,});

  Results.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    if (json['games'] != null) {
      games = [];
      json['games'].forEach((v) {
        games?.add(GamesGenres.fromJson(v));
      });
    }
  }
  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  List<GamesGenres>? games;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['games_count'] = gamesCount;
    map['image_background'] = imageBackground;
    if (games != null) {
      map['games'] = games?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class GamesGenres {
  GamesGenres({
      this.id, 
      this.slug, 
      this.name, 
      this.added,});

  GamesGenres.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    added = json['added'];
  }
  int? id;
  String? slug;
  String? name;
  int? added;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['name'] = name;
    map['added'] = added;
    return map;
  }

}