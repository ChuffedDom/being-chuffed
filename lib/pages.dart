import 'package:being_chuffed/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class DefaultPages extends StatelessWidget {
  final String markdownURL;
  final String lastEditDate;
  const DefaultPages(
      {super.key, required this.markdownURL, required this.lastEditDate});

  Future<String> fetchPage() async {
    final response = await http.get(Uri.parse(markdownURL));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "No page found";
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    // https://gist.github.com/rodydavis/01a87320cf8522241515507e5ee53ac5
    MarkdownStyleSheet material3Style = MarkdownStyleSheet(
      p: textTheme.bodyMedium!.copyWith(
        color: colors.onSurface,
      ),
      h1: textTheme.displaySmall!.copyWith(
        color: colors.primary,
        fontWeight: FontWeight.w800,
        fontSize: 36,
      ),
      h2: textTheme.headlineMedium!.copyWith(
        color: colors.primary,
        fontWeight: FontWeight.w800,
        fontSize: 24,
      ),
      h3: textTheme.headlineMedium!.copyWith(
        color: colors.primary,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      h4: textTheme.headlineSmall!.copyWith(
        color: colors.onSurface,
      ),
      h5: textTheme.titleLarge!.copyWith(
        color: colors.onSurface,
      ),
      h6: textTheme.titleMedium!.copyWith(
        color: colors.onSurface,
      ),
    );
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
      drawer: MediaQuery.of(context).size.width < 1200 ? MainDrawer() : null,
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediaQuery.of(context).size.width > 1200
              ? const Row(
                  children: [
                    MainDrawer(),
                    SizedBox(width: 8),
                  ],
                )
              : const SizedBox.shrink(),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MediaQuery.of(context).size.width < 880
                      ? InfoPanel(lastEditDate: lastEditDate)
                      : SizedBox.shrink(),
                  Container(
                    color: Theme.of(context).colorScheme.background,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          FutureBuilder(
                              future: fetchPage(),
                              builder: ((context, snapshot) {
                                if (snapshot.data != null) {
                                  return MarkdownBody(
                                      styleSheet: material3Style,
                                      data: snapshot.data.toString());
                                } else {
                                  return const Text("No page found");
                                }
                              })),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "2023 Chuffed Solutions",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiaryContainer),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          MediaQuery.of(context).size.width > 880
              ? Row(
                  children: [
                    const SizedBox(width: 8),
                    InfoPanel(lastEditDate: lastEditDate),
                  ],
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

class InfoPanel extends StatelessWidget {
  final String lastEditDate;
  const InfoPanel({super.key, required this.lastEditDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      width: MediaQuery.of(context).size.width > 880 ? 320 : null,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contributors",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://lh3.googleusercontent.com/ogw/AGvuzYakNBO-c0ExPHpB7PaA6bRCQD_KfOcISSCIBIw5qQ=s32-c-mo"),
                ),
                const SizedBox(width: 8),
                Column(
                  children: [
                    Text(
                      "Dom Maurice",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer),
                    ),
                    Text(
                      "CEO & Founder",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Last edit",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            Text(
              lastEditDate,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
          ],
        ),
      ),
    );
  }
}

class Persona extends StatelessWidget {
  const Persona({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultPages(
      lastEditDate: "Saturday 13th August 2023",
      markdownURL:
          "https://raw.githubusercontent.com/ChuffedDom/being-chuffed-handbook/main/Product/persona.md",
    );
  }
}

class Scope extends StatelessWidget {
  const Scope({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultPages(
      lastEditDate: "Wednesday 16th August 2023",
      markdownURL:
          "https://raw.githubusercontent.com/ChuffedDom/being-chuffed-handbook/main/Fundamentals/scoping.md",
    );
  }
}

class Meetings extends StatelessWidget {
  const Meetings({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultPages(
      lastEditDate: "Friday 18th August 2023",
      markdownURL:
          "https://raw.githubusercontent.com/ChuffedDom/being-chuffed-handbook/main/Fundamentals/meetings.md",
    );
  }
}

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultPages(
      lastEditDate: "Monday 21st August 2023",
      markdownURL:
          "https://raw.githubusercontent.com/ChuffedDom/being-chuffed-handbook/main/Engineering/Stack.md",
    );
  }
}
