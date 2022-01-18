import 'package:spotifyapp/models/music.dart';

class MusicOperations {
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Humsafar',
          'https://c-cl.cdn.smule.com/rs-s78/arr/a5/c5/bfbfd68e-e588-42c7-bf33-dd51ef4caa89.jpg',
          '"Humsafar" Badrinath Ki Dulhania',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/fe/8b/e2/fe8be25d-962a-7b16-983f-f55b9f0425a8/mzaf_15316374950068875217.plus.aac.p.m4a'),

      Music(
          'Tere Mere',
          'https://c-cl.cdn.smule.com/rs-s79/arr/89/d8/3e160d4f-14e6-4ef4-9bd9-50b93f7cff72.jpg',
          ' "Tere Mere" Chef',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/bf/30/16/bf30169a-3146-0652-35cb-282f01d0c627/mzaf_14180455793944212485.plus.aac.p.m4a'),
      Music(
          'Main Tere Kabil Hoon',
          'https://c-cl.cdn.smule.com/rs-s87/arr/f6/1e/acedee4e-422f-469d-92f6-86e967eac1ce.jpg',
          '  "Main Tere Kabil Hoon" Kaabil',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/ec/18/0c/ec180c82-d702-622e-770d-b8edb47b4e85/mzaf_683812943324700547.plus.aac.p.m4a'),

      Music(
          'Aaj Se Teri',
          'https://c-cl.cdn.smule.com/rs-s80/arr/fe/31/20e2daf2-c144-4b3c-b9fd-b87322e03189.jpg',
          ' "Aaj Se Teri" Padman',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/62/b8/37/62b83714-c9bb-42cd-8dc6-0de2c0cc7733/mzaf_3208783426827863123.plus.aac.p.m4a'),

      //Music('name', 'image', 'desc'),
    ];
  }

  MusicOperations._() {}
}
