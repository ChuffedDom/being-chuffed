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
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.outline,
                        offset: Offset(2, 0),
                        blurRadius: 4,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      Text(
                        "Welcome to the Chuffed Solutions Handbook, affectionately named Being Chuffed.",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface),
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
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(height: 24.0),
                      OverflowBar(
                        spacing: 16.0,
                        overflowSpacing: 16.0,
                        alignment: MainAxisAlignment.spaceEvenly,
                        overflowAlignment: OverflowBarAlignment.center,
                        children: [
                          ValueItem(
                            imageURL:
                                "https://images.unsplash.com/photo-1582213782179-e0d53f98f2ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80",
                            icon: Icons.people,
                            title: "🧑‍🤝‍🧑 People",
                            unorderedList: UnorderedList(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
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
                            imageURL:
                                "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1744&q=80",
                            icon: Icons.public,
                            title: "🌍 Planet",
                            unorderedList: UnorderedList(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
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
                            imageURL:
                                "https://images.unsplash.com/photo-1518364538800-6bae3c2ea0f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1742&q=80",
                            icon: Icons.rocket_launch,
                            title: "🚀 Progress",
                            unorderedList: UnorderedList(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
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
                      const SizedBox(height: 24.0),
                      Text(
                        "Principles",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(height: 24.0),
                      const PrincipleItem(
                        orderNumber: 1,
                        mainText:
                            "(Our guiding principle) The value of a company is not only in the profit it makes but also in the positive impact on people’s lives and leaving the planet in a better place than they found it.",
                      ),
                      const PrincipleItem(
                        orderNumber: 2,
                        mainText:
                            "All we ever really do is tell stories about people.",
                      ),
                      const PrincipleItem(
                        orderNumber: 3,
                        mainText: "Community counts.",
                      ),
                      const PrincipleItem(
                        orderNumber: 4,
                        mainText: "Everything is an experiment.",
                        subText:
                            "As we work we are always chasing more validation. Every piece of work not only delivers some kind of value, but also a means of gathering insight to iterate upon.",
                      ),
                      const PrincipleItem(
                        orderNumber: 5,
                        mainText: "Anything + time = change.",
                      ),
                      const PrincipleItem(
                        orderNumber: 6,
                        mainText: "Success is a result of iteratation.",
                      ),
                      const PrincipleItem(
                        orderNumber: 7,
                        mainText:
                            "Success is finding the simple solution to a complex problem without simplifying the problem first.",
                      ),
                      const PrincipleItem(
                        orderNumber: 8,
                        mainText: "Success is failing fast and learning hard.",
                      ),
                      const PrincipleItem(
                        orderNumber: 9,
                        mainText:
                            "In the end, it has to be about delivering some value to a person.",
                      ),
                      const PrincipleItem(
                        orderNumber: 10,
                        mainText: "Urgency is the enemy.",
                      ),
                      const PrincipleItem(
                        orderNumber: 11,
                        mainText:
                            "No argument is greater than the one of inclusion.",
                      ),
                      const PrincipleItem(
                        orderNumber: 12,
                        mainText: "Strategy > Tactics.",
                      ),
                      const PrincipleItem(
                        orderNumber: 13,
                        mainText: "Purpose, Vision, Goals, and Success.",
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
  final UnorderedList unorderedList;
  final Color textColor;
  final Color backgroundColor;
  final IconData icon;
  final String imageURL;

  const ValueItem({
    super.key,
    required this.title,
    required this.unorderedList,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.black,
    required this.icon,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 224,
      child: Card(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(imageURL),
            ),
            // Icon(icon,
            // color: Theme.of(context).colorScheme.onSecondaryContainer),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  unorderedList,
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class PrincipleItem extends StatelessWidget {
  final int orderNumber;
  final String mainText;
  final String? subText;
  const PrincipleItem(
      {super.key,
      required this.orderNumber,
      required this.mainText,
      this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24),
              SizedBox(
                width: 24,
                child: Text(
                  textAlign: TextAlign.right,
                  "${orderNumber.toString()}.",
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  mainText,
                ),
              ),
              const SizedBox(width: 24),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
