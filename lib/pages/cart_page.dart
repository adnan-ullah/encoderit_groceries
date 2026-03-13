import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../utils/app_theme.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with SingleTickerProviderStateMixin {
  final List<_CartItem> _items = [
    const _CartItem(name: 'Capsicum', price: 21.56, oldPrice: 22.00, quantity: 1),
    const _CartItem(name: 'Almonds', price: 17.28, oldPrice: 18.00, quantity: 1),
  ];

  double get _subtotal =>
      _items.fold(0.0, (sum, item) => sum + item.price * item.quantity);

  late final AnimationController _emptyAnimController;
  late final Animation<double> _emptyOffset;

  @override
  void initState() {
    super.initState();
    _emptyAnimController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _emptyOffset = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(
        parent: _emptyAnimController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _emptyAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasItems = _items.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: ResponsiveHelper.getResponsiveWidth(context, 16),
        title: Text(
          'Shopping Cart',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 12,
                ),
                child: hasItems ? _buildCartList(context) : _buildEmptyState(context),
              ),
            ),
            const Divider(
              thickness: 1,
              color: AppTheme.textSecondary,
            ),
            _buildSummarySection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _emptyOffset,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _emptyOffset.value),
              child: child,
            );
          },
          child: Container(
            width: ResponsiveHelper.getResponsiveWidth(context, 220),
            height: ResponsiveHelper.getResponsiveHeight(context, 180),
            decoration: BoxDecoration(
              color: AppTheme.cyanPale,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 24),
              ),
            ),
            child: Icon(
              Icons.inventory_2_outlined,
              size: ResponsiveHelper.getResponsiveSize(context, 90),
              color: AppTheme.textTertiary,
            ),
          ),
        ),
        ResponsiveHelper.getResponsiveSpacing(context, 24),
        Text(
          'Your cart is empty! Start shopping now!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }

  Widget _buildCartList(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      itemCount: _items.length,
      separatorBuilder: (_, __) => Divider(
        height: ResponsiveHelper.getResponsiveHeight(context, 16),
        color: Colors.grey.shade200,
      ),
      itemBuilder: (context, index) {
        final item = _items[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ResponsiveHelper.getResponsiveWidth(context, 80),
              height: ResponsiveHelper.getResponsiveHeight(context, 80),
              decoration: BoxDecoration(
                color: AppTheme.lightCard,
                borderRadius: BorderRadius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 16),
                ),
              ),
              child: Icon(
                Icons.image_outlined,
                size: ResponsiveHelper.getResponsiveSize(context, 40),
                color: AppTheme.textTertiary,
              ),
            ),
            SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppTheme.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: ResponsiveHelper.getResponsiveHeight(context, 4)),
                  Row(
                    children: [
                      Text(
                        '\$${item.price.toStringAsFixed(2)}',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: AppTheme.goldPrimary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (item.oldPrice != null) ...[
                        const SizedBox(width: 6),
                        Text(
                          '\$${item.oldPrice!.toStringAsFixed(2)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppTheme.textTertiary,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ],
                  ),
                  SizedBox(height: ResponsiveHelper.getResponsiveHeight(context, 8)),
                  Row(
                    children: [
                      _QuantityButton(
                        icon: Icons.remove,
                        onPressed: () {
                          if (item.quantity > 1) {
                            setState(() {
                              _items[index] =
                                  item.copyWith(quantity: item.quantity - 1);
                            });
                          }
                        },
                      ),
                      SizedBox(
                          width: ResponsiveHelper.getResponsiveWidth(context, 12)),
                      Text(
                        '${item.quantity}',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: AppTheme.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                          width: ResponsiveHelper.getResponsiveWidth(context, 12)),
                      _QuantityButton(
                        icon: Icons.add,
                        onPressed: () {
                          setState(() {
                            _items[index] =
                                item.copyWith(quantity: item.quantity + 1);
                          });
                        },
                      ),
                      const Spacer(),
                      TextButton.icon(
                        onPressed: () {
                          setState(() {
                            _items.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete_outline,
                            color: Colors.red.shade400, size: 18),
                        label: Text(
                          'Remove',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.red.shade400,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                ResponsiveHelper.getResponsiveWidth(context, 8),
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSummarySection(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 16,
        vertical: 14,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Subtotal',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                '\$${_subtotal.toStringAsFixed(2)}',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          ResponsiveHelper.getResponsiveSpacing(context, 12),
          SizedBox(
            width: double.infinity,
            height: ResponsiveHelper.getResponsiveHeight(context, 52),
            child: ElevatedButton(
              onPressed: _items.isEmpty ? null : () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.goldPrimary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    ResponsiveHelper.getResponsiveRadius(context, 28),
                  ),
                ),
                elevation: 0,
              ),
              child: Text(
                'Proceed to Checkout',
                style: theme.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          ResponsiveHelper.getResponsiveSpacing(context, 10),
          Text(
            'Shipping, Taxes & Discount Calculate at Checkout',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _CartItem {
  const _CartItem({
    required this.name,
    required this.price,
    this.oldPrice,
    this.quantity = 1,
  });

  final String name;
  final double price;
  final double? oldPrice;
  final int quantity;

  _CartItem copyWith({int? quantity}) => _CartItem(
        name: name,
        price: price,
        oldPrice: oldPrice,
        quantity: quantity ?? this.quantity,
      );
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(
        ResponsiveHelper.getResponsiveRadius(context, 20),
      ),
      child: Container(
        width: ResponsiveHelper.getResponsiveWidth(context, 28),
        height: ResponsiveHelper.getResponsiveHeight(context, 28),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getResponsiveRadius(context, 20),
          ),
        ),
        child: Icon(
          icon,
          size: 16,
          color: AppTheme.textPrimary,
        ),
      ),
    );
  }
}

