import 'dart:developer';

class GameByCategory {
  GameByCategory({
      this.count, 
      this.next,
      this.results, 
      this.userPlatforms,});

  GameByCategory.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(ResultsGR.fromJson(v));
      });
    }
    userPlatforms = json['user_platforms'];
  }
  int? count;
  String? next;
  dynamic previous;
  List<ResultsGR>? results;
  bool? userPlatforms;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['user_platforms'] = userPlatforms;
    return map;
  }

}

class ResultsGR {
  ResultsGR({
      this.slug, 
      this.name, 
      this.playtime, 
      this.platforms, 
      this.stores, 
      this.released, 
      this.tba, 
      this.backgroundImage, 
      this.rating, 
      this.ratingTop, 
      this.ratings, 
      this.ratingsCount, 
      this.reviewsTextCount, 
      this.added, 
      this.addedByStatus, 
      this.metacritic, 
      this.suggestionsCount, 
      this.updated, 
      this.id, 
      this.score, 
      this.clip, 
      this.tags, 
      this.esrbRating, 
      this.userGame, 
      this.reviewsCount, 
      this.saturatedColor, 
      this.dominantColor, 
      this.shortScreenshots, 
      this.parentPlatforms, 
      this.genres,});

  ResultsGR.fromJson(dynamic json) {
    slug = json['slug'];
    name = json['name'];
    playtime = json['playtime'];
    if (json['platforms'] != null) {
      platforms = [];
      json['platforms'].forEach((v) {
        platforms?.add(Platforms.fromJson(v));
      });
    }
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(Stores.fromJson(v));
      });
    }
    released = json['released'];
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    if (json['ratings'] != null) {
      ratings = [];
      json['ratings'].forEach((v) {
        ratings?.add(Ratings.fromJson(v));
      });
    }
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    if( json['added_by_status']!=null){
      addedByStatus = json['added_by_status'] != null ? AddedByStatus.fromJson(json['addedByStatus']) : null;
    }

   //  metacritic = json['metacritic'];
   //  suggestionsCount = json['suggestions_count'];
   //  updated = json['updated'];
   //  id = json['id'];
   //  score = json['score'];
   //  clip = json['clip'];
   //  if (json['tags'] != null) {
   //    tags = [];
   //    json['tags'].forEach((v) {
   //      tags?.add(Tags.fromJson(v));
   //    });
   //  }
   //  esrbRating = json['esrb_rating'] != null ? EsrbRating.fromJson(json['esrbRating']) : null;
   //  userGame = json['user_game'];
   //  reviewsCount = json['reviews_count'];
   //  saturatedColor = json['saturated_color'];
   //  dominantColor = json['dominant_color'];
   //  if (json['short_screenshots'] != null) {
   //    shortScreenshots = [];
   //    json['short_screenshots'].forEach((v) {
   //      shortScreenshots?.add(ShortScreenshots.fromJson(v));
   //    });
   //  }
   //  if (json['parent_platforms'] != null) {
   //    parentPlatforms = [];
   //    json['parent_platforms'].forEach((v) {
   //      parentPlatforms?.add(ParentPlatforms.fromJson(v));
   //    });
   //  }
   //  if (json['genres'] != null) {
   //    genres = [];
   //    json['genres'].forEach((v) {
   //      genres?.add(GenresGR.fromJson(v));
   //    });
   //  }
  }
  String? slug;
  String? name;
  int? playtime;
  List<Platforms>? platforms;
  List<Stores>? stores;
  String? released;
  bool? tba;
  String? backgroundImage;
  double? rating;
  int? ratingTop;
  List<Ratings>? ratings;
  int? ratingsCount;
  int? reviewsTextCount;
  int? added;
  AddedByStatus? addedByStatus;
  int? metacritic;
  int? suggestionsCount;
  String? updated;
  int? id;
  dynamic score;
  dynamic clip;
  List<Tags>? tags;
  EsrbRating? esrbRating;
  dynamic userGame;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<ShortScreenshots>? shortScreenshots;
  List<ParentPlatforms>? parentPlatforms;
  List<GenresGR>? genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slug'] = slug;
    map['name'] = name;
    map['playtime'] = playtime;
    if (platforms != null) {
      map['platforms'] = platforms?.map((v) => v.toJson()).toList();
    }
    if (stores != null) {
      map['stores'] = stores?.map((v) => v.toJson()).toList();
    }
    map['released'] = released;
    map['tba'] = tba;
    map['background_image'] = backgroundImage;
    map['rating'] = rating;
    map['rating_top'] = ratingTop;
    if (ratings != null) {
      map['ratings'] = ratings?.map((v) => v.toJson()).toList();
    }
    map['ratings_count'] = ratingsCount;
    map['reviews_text_count'] = reviewsTextCount;
    map['added'] = added;
    if (addedByStatus != null) {
      map['added_by_status'] = addedByStatus?.toJson();
    }
    map['metacritic'] = metacritic;
    map['suggestions_count'] = suggestionsCount;
    map['updated'] = updated;
    map['id'] = id;
    map['score'] = score;
    map['clip'] = clip;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (esrbRating != null) {
      map['esrb_rating'] = esrbRating?.toJson();
    }
    map['user_game'] = userGame;
    map['reviews_count'] = reviewsCount;
    map['saturated_color'] = saturatedColor;
    map['dominant_color'] = dominantColor;
    if (shortScreenshots != null) {
      map['short_screenshots'] = shortScreenshots?.map((v) => v.toJson()).toList();
    }
    if (parentPlatforms != null) {
      map['parent_platforms'] = parentPlatforms?.map((v) => v.toJson()).toList();
    }
    if (genres != null) {
      map['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class GenresGR {
  GenresGR({
      this.id, 
      this.name, 
      this.slug,});

  GenresGR.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }

}

class ParentPlatforms {
  ParentPlatforms({
      this.platform,});

  ParentPlatforms.fromJson(dynamic json) {
    platform = json['platform'] != null ? Platform.fromJson(json['platform']) : null;
  }
  Platform? platform;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (platform != null) {
      map['platform'] = platform?.toJson();
    }
    return map;
  }

}

class Platform {
  Platform({
      this.id, 
      this.name, 
      this.slug,});

  Platform.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }

}

class ShortScreenshots {
  ShortScreenshots({
      this.id, 
      this.image,});

  ShortScreenshots.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
  }
  int? id;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    return map;
  }

}

class EsrbRating {
  EsrbRating({
      this.id, 
      this.name, 
      this.slug, 
      this.nameEn, 
      this.nameRu,});

  EsrbRating.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    nameEn = json['name_en'];
    nameRu = json['name_ru'];
  }
  int? id;
  String? name;
  String? slug;
  String? nameEn;
  String? nameRu;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['name_en'] = nameEn;
    map['name_ru'] = nameRu;
    return map;
  }

}

class Tags {
  Tags({
      this.id, 
      this.name, 
      this.slug, 
      this.language, 
      this.gamesCount, 
      this.imageBackground,});

  Tags.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    language = json['language'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
  int? id;
  String? name;
  String? slug;
  String? language;
  int? gamesCount;
  String? imageBackground;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['language'] = language;
    map['games_count'] = gamesCount;
    map['image_background'] = imageBackground;
    return map;
  }

}

class AddedByStatus {
  AddedByStatus({
      this.yet, 
      this.owned, 
      this.beaten, 
      this.toplay, 
      this.dropped, 
      this.playing,});

  AddedByStatus.fromJson(dynamic json) {
    // yet = json['yet'];
    // owned = json['owned'];
    // beaten = json['beaten'];
    // toplay = json['toplay'];
    // dropped = json['dropped'];
    // playing = json['playing'];
  }
  int? yet;
  int? owned;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['yet'] = yet;
    map['owned'] = owned;
    map['beaten'] = beaten;
    map['toplay'] = toplay;
    map['dropped'] = dropped;
    map['playing'] = playing;
    return map;
  }

}

class Ratings {
  Ratings({
      this.id, 
      this.title, 
      this.count, 
      this.percent,});

  Ratings.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    count = json['count'];
    percent = json['percent'];
  }
  int? id;
  String? title;
  int? count;
  double? percent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['count'] = count;
    map['percent'] = percent;
    return map;
  }

}

class Stores {
  Stores({
      this.store,});

  Stores.fromJson(dynamic json) {
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
  }
  Store? store;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (store != null) {
      map['store'] = store?.toJson();
    }
    return map;
  }

}

class Store {
  Store({
      this.id, 
      this.name, 
      this.slug,});

  Store.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }

}

class Platforms {
  Platforms({
      this.platform,});

  Platforms.fromJson(dynamic json) {
    platform = json['platform'] != null ? Platform.fromJson(json['platform']) : null;
  }
  Platform? platform;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (platform != null) {
      map['platform'] = platform?.toJson();
    }
    return map;
  }

}

class PlatformGR {
  PlatformGR({
      this.id, 
      this.name, 
      this.slug,});

  PlatformGR.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }

}