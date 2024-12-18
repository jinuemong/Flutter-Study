
enum Result {
  playerWin('승리'),
  draw('무승부'),
  cpuWin('패배');

  const Result(this.displayString);

  final String displayString;
}
