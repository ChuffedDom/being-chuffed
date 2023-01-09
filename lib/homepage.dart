import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        title: Text(
          "Being Chuffed",
          style: GoogleFonts.raleway(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 768),
          child: ListView(
            children: [
              const SizedBox(height: 16.0),
              Card(
                color: Theme.of(context).colorScheme.surface,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      Text(
                        "Welcome to the Chuffed Solutions Handbook, affectionately named Being Chuffed.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                          "The pages here will serve both internally and externally as:"),
                      const UnorderedList(
                        children: [
                          "an explanation of the methodology",
                          "an expression of our ethos",
                          "the forms of communicating",
                          "our guiding concepts",
                          "our leading philosophies",
                          "our values and principles",
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "Chuffed Solutions turns ideas into apps. We accomplish this through various disciplines, most commonly; Product Management, Project Management, and Operations. As we adopt these mindsets, we build our opinions on experience, research, experimentation, and feedback.",
                      ),
                      const SizedBox(height: 24.0),
                      Text(
                        "Values",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 24.0),
                      OverflowBar(
                        spacing: 16.0,
                        overflowSpacing: 16.0,
                        alignment: MainAxisAlignment.spaceEvenly,
                        overflowAlignment: OverflowBarAlignment.center,
                        children: [
                          ValueItem(
                            icon: Icons.people,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiaryContainer,
                            textColor: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                            title: "People",
                            description: "something something something",
                            unorderedList: UnorderedList(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              children: const [
                                "Inclusion",
                                "Kindness",
                                "Community",
                                "Empathy",
                                "Ethical",
                              ],
                            ),
                          ),
                          ValueItem(
                            icon: Icons.public,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiaryContainer,
                            textColor: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                            title: "Planet",
                            description: "something something something",
                            unorderedList: UnorderedList(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                              children: const [
                                "Sustainability",
                                "Environment",
                                "Zero-waste",
                                "Net-zero goal",
                                "Conservation",
                              ],
                            ),
                          ),
                          ValueItem(
                            icon: Icons.rocket_launch,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiaryContainer,
                            textColor: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                            title: "Progress",
                            description: "something something something",
                            unorderedList: UnorderedList(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                              children: const [
                                "Iteration",
                                "Innovation",
                                "Profit",
                                "Growth",
                                "Diversification",
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class UnorderedList extends StatelessWidget {
  final List<String> children;
  final Color? color;

  const UnorderedList({
    super.key,
    required this.children,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0),
      child: Column(
        children: [
          for (var child in children)
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Text(
                    "•",
                    style: TextStyle(color: color),
                  ),
                  const SizedBox(width: 16.0),
                  Text(
                    child,
                    style: TextStyle(color: color),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class ValueItem extends StatelessWidget {
  final String title;
  final String description;
  final UnorderedList unorderedList;
  final Color textColor;
  final Color backgroundColor;
  final IconData icon;

  const ValueItem({
    super.key,
    required this.title,
    required this.description,
    required this.unorderedList,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.black,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 224,
      child: Card(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: textColor),
              const SizedBox(height: 8.0),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              /* const SizedBox(height: 16),
               Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ), */
              unorderedList,
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
