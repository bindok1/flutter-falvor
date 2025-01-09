import 'package:base_2/features/home/data/models/doc_model.dart';
import 'package:base_2/features/home/presentation/widgets/app_home_widget.dart';
import 'package:base_2/features/home/presentation/widgets/doc_thuhmbnail_widget.dart';
import 'package:base_2/shared/assets/dummy_data.dart';
import 'package:base_2/shared/component/scaffold_app.dart';
import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:base_2/shared/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: const [Text('Success open drawer')],
        ),
      ),
      child: Column(
        children: [
          const AppHomeWidget(),
          Spacing.v16,
          _buildTitleList(context),
          Spacing.v16,
          _buildListDocument(context),
        ],
      ),
    );
  }

  Widget _buildTitleList(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Berdasarkan Waktu 👇',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: AppTheme.textColorGrey),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              IconsaxPlusBold.menu,
              color: AppTheme.primaryColor,
            ))
      ],
    );
  }

  Widget _buildListDocument(BuildContext context) {
    final documents =
        DummyData.documents.map((doc) => DocumentModel.fromJson(doc)).toList();

    return SizedBox(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: documents.length,
        itemBuilder: (context, index) {
          final doc = documents[index];
          return DocumentThumbnailWidget(
            document: doc,
            icon: doc.fileType == 'pdf'
                ? FontAwesome.file_pdf_solid
                : FontAwesome.file_word_solid,
          );
        },
      ),
    );
  }
}
