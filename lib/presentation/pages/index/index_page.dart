import 'package:flutter/material.dart';
import 'package:ualet_ddd/domain/index/index_item.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/design/app_images.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/primary_button.dart';
import 'package:ualet_ddd/presentation/core/widgets/loading_in_progress_overlay/loading_in_progress_overlay.dart';
import 'package:ualet_ddd/presentation/pages/index/widgets/have_account_button.dart';
import 'package:ualet_ddd/presentation/pages/index/widgets/index_swiper_widget.dart';

class IndexPage extends StatefulWidget {
  static const titledKey = 'title';
  static const descriptionKey = 'description';
  static const beforeTitledKey = 'other';

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final items = <IndexItem>[];

  @override
  void didChangeDependencies() {
    items.add(IndexItem.getNewIndexItemFromS(S.of(context).indexTutorialItemA));
    items.add(IndexItem.getNewIndexItemFromS(S.of(context).indexTutorialItemB));
    items.add(IndexItem.getNewIndexItemFromS(S.of(context).indexTutorialItemC));
    items.add(IndexItem.getNewIndexItemFromS(S.of(context).indexTutorialItemD));
    items.add(IndexItem.getNewIndexItemFromS(S.of(context).indexTutorialItemE));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: items.length > 0,
        replacement: LoadingInProgressOverlay(isLoading: true),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.layoutMargin + AppDimens.layoutSpacerM,
              vertical: AppDimens.layoutSpacerL),
          child: Column(children: [
            const SizedBox(height: AppDimens.layoutSpacerL),
            Image.asset(AppImages.appIcon,
                width: AppDimens.emojiSizeL.width,
                height: AppDimens.emojiSizeL.height),
            IndexSwiperWidget(items: items),
            PrimaryButton(
              text: S.of(context).signUpButton,
              action: () {},
            ),
            const SizedBox(height: AppDimens.layoutSpacerM),
            HaveAccountButton()
          ]),
        ),
      ),
    );
  }
}
