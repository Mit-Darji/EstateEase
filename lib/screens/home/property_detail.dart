import 'package:estateease/models/RentProperty.dart';
import 'package:flutter/material.dart';
import 'package:estateease/utils/app_styles.dart';
import 'package:estateease/utils/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class PropertyDetail extends StatelessWidget {
  const PropertyDetail({Key? key, required this.property}) : super(key: key);
  final RentProperty property;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding8,
        ),
        height: 43,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: kPadding20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                    style: kRalewayRegular.copyWith(
                      color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text(
                    '${property.price} / ${property.per}',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('Rent Now Tapped');
              },
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius10,
                  ),
                  gradient: kLinearGradientBlue,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding24,
                ),
                child: Center(
                  child: Text(
                    'Rent Now',
                    style: kRalewaySemibold.copyWith(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
              left: kPadding20, right: kPadding20, top: kPadding8),
          child: Column(
            children: [
              Container(
                height: 319,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius20,
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      offset: const Offset(0, 18),
                      blurRadius: 18,
                      color: kBlack.withOpacity(0.1),
                    )
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      property.thumbnail,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadius20),
                            bottomRight: Radius.circular(kBorderRadius20),
                          ),
                          gradient: kLinearGradientBlack,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kPadding20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 17,
                                backgroundColor: kBlack.withOpacity(0.24),
                                child: SvgPicture.asset(
                                  'assets/icons/icon_arrow_back.svg',
                                ),
                              ),
                              CircleAvatar(
                                radius: 17,
                                backgroundColor: kBlack.withOpacity(0.24),
                                child: SvgPicture.asset(
                                  'assets/icons/icon_bookmark.svg',
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                property.name,
                                style: kRalewaySemibold.copyWith(
                                  color: kWhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 4.5,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 0.5,
                              ),
                              Text(
                                property.location.streetAddress,
                                style: kRalewayRegular.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1.5,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            kBorderRadius5,
                                          ),
                                        ),
                                        padding:
                                            const EdgeInsets.all(kPadding4),
                                        child: SvgPicture.asset(
                                          'assets/icons/icon_bedroom_white.svg',
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.blockSizeHorizontal! *
                                            2.5,
                                      ),
                                      Text(
                                        '${property.bedroom} Bedroom',
                                        style: kRalewayRegular.copyWith(
                                          color: kWhite,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 7.5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            kBorderRadius5,
                                          ),
                                        ),
                                        padding:
                                            const EdgeInsets.all(kPadding4),
                                        child: SvgPicture.asset(
                                          'assets/icons/icon_bathroom_white.svg',
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.blockSizeHorizontal! *
                                            2.5,
                                      ),
                                      Text(
                                        '${property.bathroom} Bathroom',
                                        style: kRalewayRegular.copyWith(
                                          color: kWhite,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  2.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Description',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              ReadMoreText(
                property.description,
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: '...',
                trimCollapsedText: 'Show More',
                trimExpandedText: 'Show Less',
                style: kRalewayRegular.copyWith(
                  color: kGrey85,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
                moreStyle: kRalewayRegular.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
                lessStyle: kRalewayRegular.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // CircleAvatar(
                      //   radius: 20,
                      //   backgroundImage: NetworkImage(
                      //     property.user.image,
                      //   ),
                      //   backgroundColor: kBlue,
                      // ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   property.user.name,
                          //   style: kRalewayMedium.copyWith(
                          //     color: kBlack,
                          //     fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          //   ),
                          // ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical! * 0.2,
                          ),
                          Text(
                            'Owner',
                            style: kRalewayMedium.copyWith(
                              color: kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius5),
                          color: kBlue.withOpacity(0.5),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/icon_phone.svg',
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius5),
                          color: kBlue.withOpacity(0.5),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/icon_message.svg',
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Gallery',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: kPadding16,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      color: kBlue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          property.images[index],
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: index == 4 - 1 ? kBlack.withOpacity(0.3) : null,
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                      ),
                      child: Center(
                        child: index == 4 - 1
                            ? Text(
                                '+${property.images.length - 3}',
                                style: kRalewayMedium.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 5,
                                ),
                              )
                            : null,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Container(
                height: 161,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/icons/map_sample.png',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 136,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadius20),
                            bottomRight: Radius.circular(kBorderRadius20),
                          ),
                          gradient: kLinearGradientWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
