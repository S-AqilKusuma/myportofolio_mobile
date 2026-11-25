import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/experience.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';

class ExperienceDetailScreen extends StatefulWidget {
  const ExperienceDetailScreen({super.key, required this.experience});

  final Experience experience;

  @override
  State<StatefulWidget> createState() => _ExperienceDetailScreenState();
}

class _ExperienceDetailScreenState extends State<ExperienceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.experience.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(widget.experience.category.toUpperCase()),
            Text(
              widget.experience.title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              softWrap: true,
            ),
            if (widget.experience.thumbnail != null) Image.network(widget.experience.thumbnail!),
            Text(
              widget.experience.description,
              softWrap: true,
            ),
            Text(
              widget.experience.endedAt == null ? 'Completed': 'Ongoing',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}