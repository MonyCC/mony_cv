// ignore: deprecated_member_use
import 'dart:html' as html;

class LinkOpener {
  static void openUrl(String url, String title) {
    html.window.open(url, title);
  }

  static void openGitHub() => openUrl('https://github.com/MonyCC', 'GitHub');
  static void openLinkedIn() => openUrl('https://linkedin.com/in/song-sodamony/', 'LinkedIn');
  static void openTelegram() => openUrl('https://t.me/cmonyc/', 'Telegram');
}