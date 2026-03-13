import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../utils/app_theme.dart';

enum SortOption {
  popularity,
  newest,
  priceLowToHigh,
  priceHighToLow,
}

class SortingPage extends StatefulWidget {
  const SortingPage({
    super.key,
    this.initial,
  });

  final SortOption? initial;

  @override
  State<SortingPage> createState() => _SortingPageState();
}

class _SortingPageState extends State<SortingPage> {
  late SortOption _selected = widget.initial ?? SortOption.popularity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      top: false,
      child: Padding(
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 44,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 12),
            Text(
              'Filter & Sorting',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w800,
              ),
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 8),
            _SortTile(
              title: 'Popularity',
              value: SortOption.popularity,
              groupValue: _selected,
              onChanged: (v) => setState(() => _selected = v),
            ),
            _SortTile(
              title: 'Newest',
              value: SortOption.newest,
              groupValue: _selected,
              onChanged: (v) => setState(() => _selected = v),
            ),
            _SortTile(
              title: 'Price: Low to High',
              value: SortOption.priceLowToHigh,
              groupValue: _selected,
              onChanged: (v) => setState(() => _selected = v),
            ),
            _SortTile(
              title: 'Price: High to Low',
              value: SortOption.priceHighToLow,
              groupValue: _selected,
              onChanged: (v) => setState(() => _selected = v),
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppTheme.goldPrimary.withOpacity(0.35)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Text(
                      'Cancel',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: AppTheme.goldPrimary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(_selected),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.goldPrimary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Text(
                      'Apply',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 8),
          ],
        ),
      ),
    );
  }
}

class _SortTile extends StatelessWidget {
  const _SortTile({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String title;
  final SortOption value;
  final SortOption groupValue;
  final ValueChanged<SortOption> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RadioListTile<SortOption>(
      value: value,
      groupValue: groupValue,
      onChanged: (v) {
        if (v != null) onChanged(v);
      },
      contentPadding: EdgeInsets.zero,
      activeColor: AppTheme.goldPrimary,
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          color: AppTheme.textPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

