import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:exhibition_app/model/book_model.dart';
import 'package:exhibition_app/provider/theme_provider.dart';
import 'package:exhibition_app/screen/detail/detail.dart';
import 'package:exhibition_app/utils/constant/app_typoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(theme: theme),
              const SizedBox(height: 20),
              animatedText(theme: theme),
              SizedBox(height: 10.h),
              searchBarWidget(),
              SizedBox(height: 10.h),
              categoryWidget(itemCount: 6),
              SizedBox(height: 20.h),
              Text('New Releases', style: AppTypography.kBold24),
              SizedBox(height: 10.h),
              categoryWidget(itemCount: books.reversed.length),
            ],
          ),
        ),
      ),
    );
  }
}

class categoryWidget extends StatelessWidget {
  final int itemCount;
  const categoryWidget({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          final data = books[index];
          return FadeInUp(
            controller: (controller) => controller = controller,
            delay: const Duration(milliseconds: 400),
            child: GestureDetector(
              onTap: () => Get.off(() => DetailScreen(model: data)),
              child: Container(
                height: 180.h,
                width: 145.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(data.img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: itemCount,
      ),
    );
  }
}

class searchBarWidget extends StatelessWidget {
  const searchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      controller: (controller) => controller = controller,
      delay: const Duration(milliseconds: 500),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for exhibitions, events, or topics',
          hintStyle: AppTypography.kLight14.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class animatedText extends StatelessWidget {
  const animatedText({super.key, required this.theme});

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: FadeInUp(
        controller: (controller) => controller = controller,
        duration: const Duration(milliseconds: 500),
        child: SizedBox(
          height: 70.h,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Good Morning, \n Taufeeq Ahmad',
                textStyle: theme.headlineSmall,
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({super.key, required this.theme});

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
            shape: BoxShape.circle,
          ),

          child: IconButton(
            icon: const Icon(Icons.menu, size: 30),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome Back', style: theme.labelMedium),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                Text(
                  'New York, USA',
                  style: AppTypography.kBold12.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ],
        ),
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
      ],
    );
  }
}
