import 'package:base_2/shared/config/theme/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorTheme {
  static DefaultStyles get styles => DefaultStyles(
        // Heading Styles
        h1: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 36,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            height: 1.15,
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(16, 16),
          const VerticalSpacing(0, 0),
          null,
        ),

        h2: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            height: 1.15,
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(16, 16),
          const VerticalSpacing(0, 0),
          null,
        ),

        h3: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            height: 1.25,
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(16, 16),
          const VerticalSpacing(0, 0),
          null,
        ),
         h4: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            height: 1.25,
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(12, 12),
          const VerticalSpacing(0, 0),
          null,
        ),

        h5: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            height: 1.25,
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(8, 8),
          const VerticalSpacing(0, 0),
          null,
        ),

        h6: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 16, 
            fontWeight: FontWeight.normal,
            color: Colors.black,
            height: 1.25, 
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(0, 0), 
          const VerticalSpacing(0, 0), 
          null,
        ),
        

        // Paragraph Style
        paragraph: DefaultTextBlockStyle(
          AppFontExtension.notoSerif(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            height: 1.25,
          ),
          const HorizontalSpacing(16, 16),
          const VerticalSpacing(0, 0),
          const VerticalSpacing(0, 0),
          null,
        ),

        // Text Formatting
        bold: AppFontExtension.formattingNotoSerif(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),

        italic: AppFontExtension.formattingNotoSerif(
          color: Colors.black,
        ).copyWith(
          fontStyle: FontStyle.italic,
        ),

        underline: AppFontExtension.formattingNotoSerif(
          color: Colors.black,
        ).copyWith(
          decoration: TextDecoration.underline,
        ),

        strikeThrough: AppFontExtension.formattingNotoSerif(
          color: Colors.black,
        ).copyWith(
          decoration: TextDecoration.lineThrough,
        ),

        // Text Sizes
        sizeSmall: AppFontExtension.notoSerif(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),

        sizeLarge: AppFontExtension.notoSerif(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),

        // Links
        link: AppFontExtension.notoSerif(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.blue,
        ).copyWith(
          decoration: TextDecoration.underline,
        ),
      );
}
