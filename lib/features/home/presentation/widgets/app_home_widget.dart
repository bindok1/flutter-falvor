import 'package:base_2/features/home/presentation/widgets/doc_search_delegate.dart';
import 'package:base_2/shared/assets/app_asset.dart';
import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:base_2/shared/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class AppHomeWidget extends StatelessWidget {
  const AppHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.accentColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          //TODO : Component Icon Drawer
          IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              IconsaxPlusLinear.menu,
              color: AppTheme.primaryColor,
            ),
          ),
          Spacing.width(4.5),

          //TODO : Component Input Search

          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Telusuri di Dokumen',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.textFieldHintColor,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              onTap: () {
                showSearch(
                  context: context,
                  delegate: DocumentSearchDelegate(),
                ).then((result) {
                  if (result != null) {
                    print('Selected: $result');
                  }
                });
              },
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: AppTheme.primaryColor,
                width: 2,
              ),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage(AppAsset.avatarUrl),
            ),
          )
        ],
      ),
    );
  }
}
