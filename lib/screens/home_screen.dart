import 'package:flutter/material.dart';

import '../data/travel_data.dart';
import '../models/destination.dart';
import '../widgets/category_chip.dart';
import '../widgets/destination_card.dart';
import '../widgets/section_header.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = travelCategories.first;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final gridCount = size.width > 800 ? 3 : 2;

    final visibleDestinations = selectedCategory == 'All'
        ? destinations
        : destinations
            .where((destination) => destination.category == selectedCategory)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Atlas Travel'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_border_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Find your next escape',
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 8),
            Text(
              'Hand-picked journeys with bold visuals and effortless planning.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            _SearchBar(),
            const SizedBox(height: 24),
            const SectionHeader(title: 'Categories', actionLabel: 'View all'),
            const SizedBox(height: 12),
            SizedBox(
              height: 44,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: travelCategories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final category = travelCategories[index];
                  return CategoryChip(
                    label: category,
                    isSelected: category == selectedCategory,
                    onTap: () => setState(() => selectedCategory = category),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            const SectionHeader(title: 'Top Destinations', actionLabel: 'See map'),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: visibleDestinations.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridCount,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.74,
              ),
              itemBuilder: (context, index) {
                final destination = visibleDestinations[index];
                return DestinationCard(
                  destination: destination,
                  onTap: () => _openDetails(context, destination),
                );
              },
            ),
            const SizedBox(height: 20),
            _TipBanner(),
          ],
        ),
      ),
    );
  }

  void _openDetails(BuildContext context, Destination destination) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailScreen(destination: destination),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF748CAB)),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Search destinations, hotels, flights',
                border: InputBorder.none,
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF7B8794),
                    ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF0F4C5C),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.tune, color: Colors.white, size: 18),
          ),
        ],
      ),
    );
  }
}

class _TipBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1B3A57), Color(0xFF4A6FA5)],
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.flight_takeoff, color: Color(0xFF1B3A57)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Member tip: Book early morning flights for smoother check-in.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        ],
      ),
    );
  }
}
