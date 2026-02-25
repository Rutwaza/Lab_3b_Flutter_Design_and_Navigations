import 'package:flutter/material.dart';

import '../models/destination.dart';

class BookingScreen extends StatelessWidget {
  final Destination destination;

  const BookingScreen({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Booking summary',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            _SummaryCard(destination: destination),
            const SizedBox(height: 24),
            Text('Traveler details',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            const _FormField(label: 'Full name', hint: 'Amina Rutwaza'),
            const SizedBox(height: 12),
            const _FormField(label: 'Email address', hint: 'amina@email.com'),
            const SizedBox(height: 12),
            const _FormField(label: 'Travel dates', hint: 'Aug 12 - Aug 18'),
            const SizedBox(height: 12),
            const _FormField(label: 'Travelers', hint: '2 adults, 1 child'),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _PriceRow(
                    label: 'Base package',
                    value: '\$${destination.price.toStringAsFixed(0)}',
                  ),
                  const SizedBox(height: 8),
                  const _PriceRow(label: 'Taxes & fees', value: '\$65'),
                  const Divider(height: 24),
                  _PriceRow(
                    label: 'Total',
                    value:
                        '\$${(destination.price + 65).toStringAsFixed(0)}',
                    isTotal: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: const Color(0xFF0F4C5C),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () => _showConfirmation(context),
                child: const Text(
                  'Confirm Booking',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('Booking Confirmed'),
        content: Text(
          'Your ${destination.title} trip is reserved. A confirmation email has been sent.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final Destination destination;

  const _SummaryCard({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
              destination.image,
              height: 72,
              width: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(destination.title,
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 4),
                Text(destination.location,
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 8),
                Text(
                  '${destination.days} days • Premium hotel',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF6C7A89),
                        fontSize: 12,
                      ),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class _FormField extends StatelessWidget {
  final String label;
  final String hint;

  const _FormField({required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 6),
        TextField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _PriceRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
          fontSize: isTotal ? 16 : 14,
        );
    return Row(
      children: [
        Text(label, style: textStyle),
        const Spacer(),
        Text(value, style: textStyle),
      ],
    );
  }
}
