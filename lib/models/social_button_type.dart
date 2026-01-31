enum SocialButtonType {
  gitHub(
    iconPath: 'assets/icons/github.png',
    iconSize: 35,
  ),
  linkedIn(
    iconPath: 'assets/icons/linkedin.png',
    iconSize: 35,
  ),
  telegram(
    iconPath: 'assets/icons/telegram.png',
    iconSize: 35,
  );

  const SocialButtonType({
    required this.iconPath,
    required this.iconSize,
  });

  final String iconPath;
  final double iconSize;
}