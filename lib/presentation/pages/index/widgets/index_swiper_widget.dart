import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ualet_ddd/domain/index/index_item.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';
import '../../../core/misc/build_context_x.dart';

class IndexSwiperWidget extends StatelessWidget {
  const IndexSwiperWidget({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<IndexItem> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight(dividedBy: 2),
      child: Swiper(
          itemBuilder: (context, index) {
            final item = items.elementAt(index);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppDimens.layoutSpacerL),
                if (item.beforeTitle?.isNotEmpty ?? false) ...[
                  Padding(
                    padding: EdgeInsets.only(bottom: AppDimens.layoutSpacerM),
                    child: Text(
                      item.beforeTitle,
                      style: AppTextStyles.normal1
                          .copyWith(color: AppColors.g75Color),
                    ),
                  )
                ],
                Text(
                  item.title,
                  style:
                      AppTextStyles.title2.copyWith(color: AppColors.g25Color),
                ),
                const SizedBox(height: AppDimens.layoutSpacerM),
                Text(
                  item.description,
                  style:
                      AppTextStyles.normal1.copyWith(color: AppColors.g75Color),
                )
              ],
            );
          },
          loop: false,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: AppColors.primarySoftColor,
                  size: AppDimens.layoutSpacerS,
                  activeColor: AppColors.primaryColor,
                  activeSize: AppDimens.layoutSpacerS)),
          control: new SwiperControl(iconPrevious: null, iconNext: null),
          autoplay: true,
          autoplayDelay: 8000,
          itemCount: items.length),
    );
  }
}
