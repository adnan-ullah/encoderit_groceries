import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../utils/app_theme.dart';
import 'order_tracking_page.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final List<_OrderCardData> _orders = const [
    _OrderCardData(
      title: 'Fresh Beef Boneless',
      transactionId: 'A23B567K',
      dateLabel: '22/09/2023',
      status: 'Out For Delivery',
      price: 265.00,
      stage: OrderStage.outForDelivery,
    ),
    _OrderCardData(
      title: 'Organic Avocado Pack',
      transactionId: 'B78F902L',
      dateLabel: '22/09/2023',
      status: 'Out For Delivery',
      price: 265.00,
      stage: OrderStage.outForDelivery,
    ),
    _OrderCardData(
      title: 'Chicken Breast Fillet',
      transactionId: 'C45Z321P',
      dateLabel: '22/09/2023',
      status: 'Preparing Order',
      price: 265.00,
      stage: OrderStage.processed,
    ),
    _OrderCardData(
      title: 'Fresh Green Beans',
      transactionId: 'X12M789Q',
      dateLabel: '18/09/2023',
      status: 'Delivered',
      price: 199.00,
      stage: OrderStage.delivered,
    ),
    _OrderCardData(
      title: 'Canned Chopped Tomatoes',
      transactionId: 'D55J443R',
      dateLabel: '15/09/2023',
      status: 'Delivered',
      price: 135.50,
      stage: OrderStage.delivered,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppTheme.lightBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        titleSpacing: 0,
        title: Text(
          'My Orders',
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppTheme.textPrimary,
            fontWeight: FontWeight.w800,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            ResponsiveHelper.getResponsiveHeight(context, 48),
          ),
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: AppTheme.goldPrimary,
                  ),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: AppTheme.textPrimary,
                unselectedLabelColor: AppTheme.textSecondary,
                labelStyle: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelStyle: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                tabs: const [
                  Tab(text: 'In Progress'),
                  Tab(text: 'Completed'),
                ],
              ),
              Divider(
                thickness: 1,
                color: AppTheme.textSecondary.withOpacity(0.2),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            _OrdersList(
              orders: _orders.where((o) => o.stage != OrderStage.delivered).toList(),
              showTrackButton: true,
              showFeedbackButton: false,
            ),
            _OrdersList(
              orders: _orders.where((o) => o.stage == OrderStage.delivered).toList(),
              showTrackButton: false,
              showFeedbackButton: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _OrdersList extends StatelessWidget {
  const _OrdersList({
    required this.orders,
    required this.showTrackButton,
    required this.showFeedbackButton,
  });

  final List<_OrderCardData> orders;
  final bool showTrackButton;
  final bool showFeedbackButton;

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return Center(
        child: Text(
          'No orders yet.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.textSecondary,
              ),
        ),
      );
    }

    return ListView.builder(
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 6,
        vertical: 8,
      ),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return Padding(
          padding: EdgeInsets.only(
            bottom: ResponsiveHelper.getResponsiveHeight(context, 12),
          ),
          child: _OrderCard(
            data: order,
            showTrackButton: showTrackButton,
            showFeedbackButton: showFeedbackButton,
          ),
        );
      },
    );
  }
}

enum OrderStage { processed, shipped, outForDelivery, delivered }

class _OrderCardData {
  const _OrderCardData({
    required this.title,
    required this.transactionId,
    required this.dateLabel,
    required this.status,
    required this.price,
    required this.stage,
  });

  final String title;
  final String transactionId;
  final String dateLabel;
  final String status;
  final double price;
  final OrderStage stage;
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({
    required this.data,
    required this.showTrackButton,
    required this.showFeedbackButton,
  });

  final _OrderCardData data;
  final bool showTrackButton;
  final bool showFeedbackButton;

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
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 4),
                ),
                Text(
                  'Transaction ID: ${data.transactionId}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 2),
                ),
                Text(
                  'Scheduled For: ${data.dateLabel}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 6),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.cyanPale,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    data.status,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppTheme.tealDark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getResponsiveHeight(context, 6),
                ),
                Text(
                  '\$${data.price.toStringAsFixed(2)}',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: ResponsiveHelper.getResponsiveWidth(context, 10),
          ),
          if (showTrackButton || showFeedbackButton)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showTrackButton)
                  SizedBox(
                    width: ResponsiveHelper.getResponsiveWidth(context, 86),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => OrderTrackingPage(
                              transactionId: data.transactionId,
                              title: data.title,
                              dateLabel: data.dateLabel,
                              price: data.price,
                              stage: data.stage,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.goldPrimary,
                        foregroundColor: Colors.white,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        minimumSize: Size.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getResponsiveRadius(context, 20),
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Track Order',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                if (showTrackButton && showFeedbackButton)
                  SizedBox(
                    width: ResponsiveHelper.getResponsiveWidth(context, 6),
                  ),
                if (showFeedbackButton)
                  SizedBox(
                    width: ResponsiveHelper.getResponsiveWidth(context, 110),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppTheme.goldPrimary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        minimumSize: Size.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getResponsiveRadius(context, 20),
                          ),
                        ),
                      ),
                      child: Text(
                        'Write Feedback',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

