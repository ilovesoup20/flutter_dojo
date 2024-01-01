import 'package:flutter/material.dart';

/**
 * https://docs.flutter.dev/cookbook/lists/mixed-list
 */

class ListItemsApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return ListItemsWidget(
      items: List<ListItem>.generate(
        1000,
        (i) => i % 6 == 0
            ? HeadingItem('Heading $i')
            : MessageItem('Sender $i', 'Message body $i'),
      ),
    );
  }
}

class ListItemsWidget extends StatelessWidget {
  final List<ListItem> items;

  const ListItemsWidget({super.key, required this.items});

  @override
  Widget build(BuildContext ctx) {
    const title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          },
        ),
      ),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext ctx);
  Widget buildSubtitle(BuildContext ctx);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext ctx) {
    return Text(
      heading,
      style: Theme.of(ctx).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext ctx) => const SizedBox.shrink();
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext ctx) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext ctx) => Text(body);
}
