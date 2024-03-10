import 'package:apple_store/data/models/responses/address_response_model.dart';
import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';

// ignore: must_be_immutable
class AddressTile extends StatefulWidget {
  late bool isSelected;
  final Address data;
  final VoidCallback onTap;
  final VoidCallback onEditTap;

  AddressTile({
    super.key,
    required this.data,
    this.isSelected = false,
    required this.onTap,
    required this.onEditTap,
  });

  @override
  State<AddressTile> createState() => _AddressTileState();
}

class _AddressTileState extends State<AddressTile> {
  @override
  void initState() {
    widget.isSelected = widget.data.isDefault == 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          boxShadow: widget.isSelected
              ? [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                  ),
                ]
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceHeight(24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${widget.data.name} - ${widget.data.phone}',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SpaceHeight(4.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.data.fullAddress!,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SpaceWidth(14.0),
                  Icon(
                    widget.isSelected
                        ? Icons.radio_button_checked
                        : Icons.circle_outlined,
                    color:
                        widget.isSelected ? AppColors.primary : AppColors.grey,
                  ),
                ],
              ),
            ),
            const SpaceHeight(24.0),
            if (widget.isSelected) ...[
              const Divider(color: AppColors.primary),
              Center(
                child: TextButton(
                  onPressed: widget.onEditTap,
                  child: const Text('Edit'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
