import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/local_orders_controller.dart';
import '../utils/app_theme.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({
    super.key,
    required this.transactionId,
    required this.title,
    required this.dateLabel,
    required this.price,
    required this.stage,
    required this.status,
    required this.deliveryName,
    required this.deliveryPhone,
  });

  final String transactionId;
  final String title;
  final String dateLabel;
  final double price;
  final OrderStage stage;
  final String status;
  final String deliveryName;
  final String deliveryPhone;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const steps = <_TrackingStep>[
      _TrackingStep('Order Processed'),
      _TrackingStep('Shipped Out'),
      _TrackingStep('Out for Delivery'),
      _TrackingStep('Delivered'),
    ];

    int activeIndex;
    switch (stage) {
      case OrderStage.processed:
        activeIndex = 0;
        break;
      case OrderStage.shipped:
        activeIndex = 1;
        break;
      case OrderStage.outForDelivery:
        activeIndex = 2;
        break;
      case OrderStage.delivered:
        activeIndex = 3;
        break;
    }

    return Scaffold(
      backgroundColor: AppTheme.lightBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        titleSpacing: 0,
        title: Text(
          'Order Tracking',
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppTheme.textPrimary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: ResponsiveHelper.getResponsiveRadius(context, 22),
                    backgroundColor: AppTheme.cyanPale,
                    child: const Icon(
                      Icons.person,
                      color: AppTheme.tealDark,
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveHelper.getResponsiveWidth(context, 12),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Personnel',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      Text(
                        deliveryName,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppTheme.textPrimary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: AppTheme.goldPrimary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 24),
              ),
              Column(
                children: List.generate(steps.length, (index) {
                  final s = steps[index];
                  final isActive = index <= activeIndex;
                  final isLast = index == steps.length - 1;
                  final dateForStep = index == activeIndex ? dateLabel : null;
                  return _TrackingStepTile(
                    step: s,
                    isActive: isActive,
                    showConnector: !isLast,
                    dateLabel: dateForStep,
                  );
                }),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 24),
              ),
              Text(
                'Related Orders',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 12),
              ),
              _SummaryCard(
                title: title,
                transactionId: transactionId,
                dateLabel: dateLabel,
                price: price,
                status: status,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TrackingStep {
  const _TrackingStep(this.label);
  final String label;
}

class _TrackingStepTile extends StatelessWidget {
  const _TrackingStepTile({
    required this.step,
    required this.isActive,
    required this.showConnector,
    this.dateLabel,
  });

  final _TrackingStep step;
  final bool isActive;
  final bool showConnector;
  final String? dateLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? AppTheme.goldPrimary : Colors.grey.shade300,
              ),
            ),
            if (showConnector)
              Container(
                width: 2,
                height: ResponsiveHelper.getResponsiveHeight(context, 36),
                color: Colors.grey.shade300,
              ),
          ],
        ),
        SizedBox(
          width: ResponsiveHelper.getResponsiveWidth(context, 12),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                step.label,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color:
                      isActive ? AppTheme.textPrimary : AppTheme.textSecondary,
                  fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 4),
              ),
              if (dateLabel != null)
                Text(
                  dateLabel!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.title,
    required this.transactionId,
    required this.dateLabel,
    required this.price,
    required this.status,
  });

  final String title;
  final String transactionId;
  final String dateLabel;
  final double price;
  final String status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 18);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 12,
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            width: ResponsiveHelper.getResponsiveWidth(context, 64),
            height: ResponsiveHelper.getResponsiveHeight(context, 64),
            decoration: BoxDecoration(
              color: AppTheme.lightCard,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 16),
              ),
            ),
            child: const Icon(
              Icons.image_outlined,
              color: AppTheme.textTertiary,
            ),
          ),
          SizedBox(
            width: ResponsiveHelper.getResponsiveWidth(context, 10),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transaction ID: $transactionId',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 4),
                ),
                Text(
                  'Scheduled For: $dateLabel',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 2),
                ),
                Text(
                  status,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 6),
                ),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: ResponsiveHelper.getResponsiveWidth(context, 10),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppTheme.goldPrimary,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 22),
              ),
            ),
            child: Text(
              'Summary',
              style: theme.textTheme.labelSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

