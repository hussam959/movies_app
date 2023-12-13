// ignore_for_file: unnecessary_null_comparison

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movies_app/app/extensions.dart';
import '../../../../app/components.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/asset_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/values_manager.dart';
import '../../controller/search_controller.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchEController _controller = Get.find<SearchEController>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p12),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1 - 30,
              ),
              child: Text(
                AppStrings.search,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                onChanged: (text) => _controller.search(text),
                decoration: InputDecoration(
                    labelText: AppStrings.search,
                    suffixIcon: Icon(
                      Icons.search,
                      color: ColorManager.white,
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Obx(() => _controller.searchedList.isEmpty
                ? Container(
                    margin: EdgeInsets.only(top: 150.h),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage(AssetManager.searchImage),
                          fit: BoxFit.fill,
                        ),
                        Text(
                          AppStrings.noSearchFound,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.white.withOpacity(.5)),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                : Expanded(
                    child: SizedBox(
                      height: 120.h,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: _controller.searchedList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(AppPadding.p10.h),
                            child: SizedBox(
                              height: AppSize.s120.h,
                              child: Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: AppMargin.m8.h),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(AppSize.s8.h)),
                                      child: CachedNetworkImage(
                                        imageUrl: AssetManager.imageUrl(
                                            _controller.searchedList[index]
                                                .posterPath!),
                                        width: AppSize.s120,
                                        height: AppSize.s120,
                                        fadeInCurve: Curves.fastOutSlowIn,
                                        fit: BoxFit.fill,
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                          "assets/images/splash/splash.png",
                                          width: AppSize.s120,
                                          height: AppSize.s120,
                                          fit: BoxFit.fill,
                                        ),
                                        placeholder: (context, url) =>
                                            buildImagePlaceHolder(
                                                AppSize.s120, AppSize.s120),
                                      ),
                                    ),
                                  ),
                                  20.pw,
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.h, vertical: 5.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              _controller
                                                  .searchedList[index].title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star_border_rounded,
                                                color: ColorManager.primary,
                                                size: 16.0,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                  _controller
                                                      .searchedList[index]
                                                      .voteAverage
                                                      .roundToDouble()
                                                      .toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: ColorManager
                                                              .primary),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_today,
                                                color: ColorManager.white,
                                                size: 14.0,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text(
                                                    _controller
                                                        .searchedList[index]
                                                        .releaseDate
                                                        .substring(0, 4)
                                                        .toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                      ),
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
