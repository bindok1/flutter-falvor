import 'package:base_2/features/home/data/models/doc_model.dart';
import 'package:base_2/features/editor/presentation/pages/doc_editor_page.dart';
import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:base_2/shared/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class DocumentThumbnailWidget extends StatelessWidget {
  final DocumentModel document;
  final double width;
  final double height;
  final IconData icon;
  final VoidCallback? onTap;

  const DocumentThumbnailWidget({
    super.key,
    required this.document,
    this.width = 150,
    this.height = 80,
    this.onTap,
    this.icon = FontAwesome.file_lines_solid,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final fileType = document.fileType.toLowerCase();
        if (['docx', 'pdf'].contains(fileType)) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DocEditorPage(document: document),
            ),
          );
        } else {
          // TODO: Implement PDF viewer
          onTap?.call();
        }
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8),
            width: 165,
            decoration: BoxDecoration(
              color: AppTheme.accentColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  document.thumbnailPath,
                  width: width,
                ),
              ],
            ),
          ),
          Spacing.v16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppTheme.primaryColor,
                size: 16,
              ),
              Spacing.h4,
              Text(
                document.fileName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
