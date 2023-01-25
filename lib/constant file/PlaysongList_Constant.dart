final List<PlaySongList> PlaySong = [
  PlaySongList(titles: "Short Again", songtypes: "Roy Woods", time: "8:17"),
  PlaySongList(titles: "I feel it", songtypes: "Roy Woods", time: "2:30"),
  PlaySongList(titles: "Short Again", songtypes: "Roy Woods", time: "5:10"),
  PlaySongList(titles: "Never your way", songtypes: "Roy Woods", time: "4:35"),
  PlaySongList(titles: "What We Did", songtypes: "Roy Woods", time: "2:30"),
];

class PlaySongList {
  final String titles;
  final String songtypes;
  final String time;

  PlaySongList({
    required this.titles,
    required this.songtypes,
    required this.time,
  });
}
