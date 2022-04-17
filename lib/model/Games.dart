class Games {
   Games({
      this.count, 
      this.next, 
      this.previous, 
      this.results, 
      this.seoTitle, 
      this.seoDescription, 
      this.seoKeywords, 
      this.seoH1, 
      this.noindex, 
      this.nofollow, 
      this.description, 
      this.filters, 
      this.nofollowCollections,});

  Games.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(ResultsGame.fromJson(v));
      });
    }
    seoTitle = json['seo_title'];
    seoDescription = json['seo_description'];
    seoKeywords = json['seo_keywords'];
    seoH1 = json['seo_h1'];
    noindex = json['noindex'];
    nofollow = json['nofollow'];
    description = json['description'];
    filters = json['filters'] != null ? Filters.fromJson(json['filters']) : null;
    nofollowCollections = json['nofollow_collections'] != null ? json['nofollow_collections'].cast<String>() : [];
  }
  int? count;
  String? next;
  dynamic previous;
  List<ResultsGame>? results;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  String? seoH1;
  bool? noindex;
  bool? nofollow;
  String? description;
  Filters? filters;
  List<String>? nofollowCollections;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['seo_title'] = seoTitle;
    map['seo_description'] = seoDescription;
    map['seo_keywords'] = seoKeywords;
    map['seo_h1'] = seoH1;
    map['noindex'] = noindex;
    map['nofollow'] = nofollow;
    map['description'] = description;
    if (filters != null) {
      map['filters'] = filters?.toJson();
    }
    map['nofollow_collections'] = nofollowCollections;
    return map;
  }
   final empty = Games(
     count: 0,
     next: '',
     previous: 0,
     results: [],
     seoTitle: '',
     seoDescription: '',
     seoKeywords: '',
     seoH1: '',
     noindex: false,
     nofollow: false,
     description: '',
     filters: Filters(years: []),
     nofollowCollections: [],
   );
}

class Filters {
  Filters({
      this.years,});

  Filters.fromJson(dynamic json) {
    if (json['years'] != null) {
      years = [];
      json['years'].forEach((v) {
        years?.add(Years.fromJson(v));
      });
    }
  }
  List<Years>? years;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (years != null) {
      map['years'] = years?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Years {
  Years({
      this.from, 
      this.to, 
      this.filter, 
      this.decade, 
      this.years, 
      this.nofollow, 
      this.count,});

  Years.fromJson(dynamic json) {
    from = json['from'];
    to = json['to'];
    filter = json['filter'];
    decade = json['decade'];
    if (json['years'] != null) {
      years = [];
      json['years'].forEach((v) {
        years?.add(Yearss.fromJson(v));
      });
    }
    nofollow = json['nofollow'];
    count = json['count'];
  }
  int? from;
  int? to;
  String? filter;
  int? decade;
  List<Yearss>? years;
  bool? nofollow;
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    map['filter'] = filter;
    map['decade'] = decade;
    if (years != null) {
      map['years'] = years?.map((v) => v.toJson()).toList();
    }
    map['nofollow'] = nofollow;
    map['count'] = count;
    return map;
  }

}

class Yearss {
  Yearss({
      this.year, 
      this.count, 
      this.nofollow,});

  Yearss.fromJson(dynamic json) {
    year = json['year'];
    count = json['count'];
    nofollow = json['nofollow'];
  }
  int? year;
  int? count;
  bool? nofollow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['year'] = year;
    map['count'] = count;
    map['nofollow'] = nofollow;
    return map;
  }

}

class ResultsGame {
  ResultsGame({
      this.id, 
      this.slug, 
      this.name, 
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
      this.playtime, 
      this.suggestionsCount, 
      this.updated, 
      this.userGame, 
      this.reviewsCount, 
      this.saturatedColor, 
      this.dominantColor, 
      this.platforms, 
      this.parentPlatforms, 
      this.genres, 
      this.stores, 
      this.clip, 
      this.tags, 
      this.esrbRating, 
      this.shortScreenshots,});

  ResultsGame.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
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
    addedByStatus = json['added_by_status'] != null ? AddedByStatus.fromJson(json['addedByStatus']) : null;
    metacritic = json['metacritic'];
    playtime = json['playtime'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'];
    userGame = json['user_game'];
    reviewsCount = json['reviews_count'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    if (json['platforms'] != null) {
      platforms = [];
      json['platforms'].forEach((v) {
        platforms?.add(Platforms.fromJson(v));
      });
    }
    if (json['parent_platforms'] != null) {
      parentPlatforms = [];
      json['parent_platforms'].forEach((v) {
        parentPlatforms?.add(ParentPlatforms.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(Genress.fromJson(v));
      });
    }
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(Stores.fromJson(v));
      });
    }
    clip = json['clip'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
    esrbRating = json['esrb_rating'] != null ? EsrbRating.fromJson(json['esrbRating']) : null;
    if (json['short_screenshots'] != null) {
      shortScreenshots = [];
      json['short_screenshots'].forEach((v) {
        shortScreenshots?.add(ShortScreenshots.fromJson(v));
      });
    }
  }
  int? id;
  String? slug;
  String? name;
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
  int? playtime;
  int? suggestionsCount;
  String? updated;
  dynamic userGame;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<Platforms>? platforms;
  List<ParentPlatforms>? parentPlatforms;
  List<Genress>? genres;
  List<Stores>? stores;
  dynamic clip;
  List<Tags>? tags;
  EsrbRating? esrbRating;
  List<ShortScreenshots>? shortScreenshots;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['name'] = name;
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
    map['playtime'] = playtime;
    map['suggestions_count'] = suggestionsCount;
    map['updated'] = updated;
    map['user_game'] = userGame;
    map['reviews_count'] = reviewsCount;
    map['saturated_color'] = saturatedColor;
    map['dominant_color'] = dominantColor;
    if (platforms != null) {
      map['platforms'] = platforms?.map((v) => v.toJson()).toList();
    }
    if (parentPlatforms != null) {
      map['parent_platforms'] = parentPlatforms?.map((v) => v.toJson()).toList();
    }
    if (genres != null) {
      map['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    if (stores != null) {
      map['stores'] = stores?.map((v) => v.toJson()).toList();
    }
    map['clip'] = clip;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (esrbRating != null) {
      map['esrb_rating'] = esrbRating?.toJson();
    }
    if (shortScreenshots != null) {
      map['short_screenshots'] = shortScreenshots?.map((v) => v.toJson()).toList();
    }
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
      this.slug,});

  EsrbRating.fromJson(dynamic json) {
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

class Stores {
  Stores({
      this.id, 
      this.store,});

  Stores.fromJson(dynamic json) {
    id = json['id'];
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
  }
  int? id;
  Store? store;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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
      this.slug, 
      this.domain, 
      this.gamesCount, 
      this.imageBackground,});

  Store.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    domain = json['domain'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
  int? id;
  String? name;
  String? slug;
  String? domain;
  int? gamesCount;
  String? imageBackground;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['domain'] = domain;
    map['games_count'] = gamesCount;
    map['image_background'] = imageBackground;
    return map;
  }

}

class Genress {
  Genress({
      this.id, 
      this.name, 
      this.slug, 
      this.gamesCount, 
      this.imageBackground,});

  Genress.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['games_count'] = gamesCount;
    map['image_background'] = imageBackground;
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

class Platformss {
  Platformss({
      this.id, 
      this.name, 
      this.slug,});

  Platformss.fromJson(dynamic json) {
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
      this.platform, 
      this.releasedAt, 
      this.requirementsEn, 
      this.requirementsRu,});

  Platforms.fromJson(dynamic json) {
    platform = json['platform'] != null ? Platform.fromJson(json['platform']) : null;
    releasedAt = json['released_at'];
    requirementsEn = json['requirements_en'];
    requirementsRu = json['requirements_ru'];
  }
  Platform? platform;
  String? releasedAt;
  dynamic requirementsEn;
  dynamic requirementsRu;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (platform != null) {
      map['platform'] = platform?.toJson();
    }
    map['released_at'] = releasedAt;
    map['requirements_en'] = requirementsEn;
    map['requirements_ru'] = requirementsRu;
    return map;
  }

}

class Platform {
  Platform({
      this.id, 
      this.name, 
      this.slug, 
      this.image, 
      this.yearEnd, 
      this.yearStart, 
      this.gamesCount, 
      this.imageBackground,});

  Platform.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    yearEnd = json['year_end'];
    yearStart = json['year_start'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
  int? id;
  String? name;
  String? slug;
  dynamic image;
  dynamic yearEnd;
  dynamic yearStart;
  int? gamesCount;
  String? imageBackground;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['image'] = image;
    map['year_end'] = yearEnd;
    map['year_start'] = yearStart;
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
    yet = json['yet'];
    owned = json['owned'];
    beaten = json['beaten'];
    toplay = json['toplay'];
    dropped = json['dropped'];
    playing = json['playing'];
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