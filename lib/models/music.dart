class Music {
  int? artistId;
  String? artistName;
  String? trackName;
  String? collectionName;
  String? previewUrl;
  String? artworkUrl100;
  int? trackTimeMillis;

  Music.fromJson(Map<String, dynamic> json)
      : artistId = json['artistId'],
        artistName = json['artistName'],
        trackName = json['trackName'],
        collectionName = json['collectionName'],
        previewUrl = json['previewUrl'],
        artworkUrl100 = json['artworkUrl100'],
        trackTimeMillis = json['trackTimeMillis'];

  Map<String, dynamic> toJson() {
    return {
      'artistId': artistId,
      'artistName': artistName,
      'trackName': trackName,
      'collectionName': collectionName,
      'previewUrl': previewUrl,
      'artworkUrl100': artworkUrl100,
      'trackTimeMillis': trackTimeMillis,
    };
  }
}
