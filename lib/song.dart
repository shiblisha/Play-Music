class Song {
  Song({
      this.status, 
      this.soundcloudTrack, 
      this.spotifyTrack,});

  Song.fromJson(dynamic json) {
    status = json['status'];
    soundcloudTrack = json['soundcloudTrack'] != null ? SoundcloudTrack.fromJson(json['soundcloudTrack']) : null;
    spotifyTrack = json['spotifyTrack'] != null ? SpotifyTrack.fromJson(json['spotifyTrack']) : null;
  }
  bool? status;
  SoundcloudTrack? soundcloudTrack;
  SpotifyTrack? spotifyTrack;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (soundcloudTrack != null) {
      map['soundcloudTrack'] = soundcloudTrack?.toJson();
    }
    if (spotifyTrack != null) {
      map['spotifyTrack'] = spotifyTrack?.toJson();
    }
    return map;
  }

}

class SpotifyTrack {
  SpotifyTrack({
      this.type, 
      this.id, 
      this.name, 
      this.shareUrl, 
      this.durationMs, 
      this.durationText, 
      this.artists, 
      this.album,});

  SpotifyTrack.fromJson(dynamic json) {
    type = json['type'];
    id = json['id'];
    name = json['name'];
    shareUrl = json['shareUrl'];
    durationMs = json['durationMs'];
    durationText = json['durationText'];
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
    album = json['album'] != null ? Album.fromJson(json['album']) : null;
  }
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  int? durationMs;
  String? durationText;
  List<Artists>? artists;
  Album? album;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['id'] = id;
    map['name'] = name;
    map['shareUrl'] = shareUrl;
    map['durationMs'] = durationMs;
    map['durationText'] = durationText;
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    if (album != null) {
      map['album'] = album?.toJson();
    }
    return map;
  }

}

class Album {
  Album({
      this.type, 
      this.id, 
      this.name, 
      this.shareUrl, 
      this.cover,});

  Album.fromJson(dynamic json) {
    type = json['type'];
    id = json['id'];
    name = json['name'];
    shareUrl = json['shareUrl'];
    if (json['cover'] != null) {
      cover = [];
      json['cover'].forEach((v) {
        cover?.add(Cover.fromJson(v));
      });
    }
  }
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  List<Cover>? cover;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['id'] = id;
    map['name'] = name;
    map['shareUrl'] = shareUrl;
    if (cover != null) {
      map['cover'] = cover?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Cover {
  Cover({
      this.url, 
      this.width, 
      this.height,});

  Cover.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}

class Artists {
  Artists({
      this.type, 
      this.id, 
      this.name, 
      this.shareUrl,});

  Artists.fromJson(dynamic json) {
    type = json['type'];
    id = json['id'];
    name = json['name'];
    shareUrl = json['shareUrl'];
  }
  String? type;
  String? id;
  String? name;
  String? shareUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['id'] = id;
    map['name'] = name;
    map['shareUrl'] = shareUrl;
    return map;
  }

}

class SoundcloudTrack {
  SoundcloudTrack({
      this.searchTerm, 
      this.id, 
      this.permalink, 
      this.title, 
      this.user, 
      this.audio,});

  SoundcloudTrack.fromJson(dynamic json) {
    searchTerm = json['searchTerm'];
    id = json['id'];
    permalink = json['permalink'];
    title = json['title'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['audio'] != null) {
      audio = [];
      json['audio'].forEach((v) {
        audio?.add(Audio.fromJson(v));
      });
    }
  }
  String? searchTerm;
  int? id;
  String? permalink;
  String? title;
  User? user;
  List<Audio>? audio;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['searchTerm'] = searchTerm;
    map['id'] = id;
    map['permalink'] = permalink;
    map['title'] = title;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (audio != null) {
      map['audio'] = audio?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Audio {
  Audio({
      this.quality, 
      this.url, 
      this.durationMs, 
      this.durationText, 
      this.mimeType, 
      this.format,});

  Audio.fromJson(dynamic json) {
    quality = json['quality'];
    url = json['url'];
    durationMs = json['durationMs'];
    durationText = json['durationText'];
    mimeType = json['mimeType'];
    format = json['format'];
  }
  String? quality;
  String? url;
  int? durationMs;
  String? durationText;
  String? mimeType;
  String? format;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality'] = quality;
    map['url'] = url;
    map['durationMs'] = durationMs;
    map['durationText'] = durationText;
    map['mimeType'] = mimeType;
    map['format'] = format;
    return map;
  }

}

class User {
  User({
      this.id, 
      this.permalink, 
      this.name, 
      this.verified,});

  User.fromJson(dynamic json) {
    id = json['id'];
    permalink = json['permalink'];
    name = json['name'];
    verified = json['verified'];
  }
  int? id;
  String? permalink;
  String? name;
  bool? verified;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['permalink'] = permalink;
    map['name'] = name;
    map['verified'] = verified;
    return map;
  }

}