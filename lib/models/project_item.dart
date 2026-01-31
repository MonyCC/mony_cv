class ProjectItem {
  final String title;
  final String timeline;
  final String description;
  final List<String> techStack;
  final List<String> features;
  final List<String> responsibilities;
  
  ProjectItem({
    required this.title,
    required this.timeline,
    required this.description,
    required this.techStack,
    this.features = const [],
    this.responsibilities = const [],
  });
}