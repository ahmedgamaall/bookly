import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:connectivity_checker/connectivity_checker.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  NewestBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchNewestBooks(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return ConnectivityAppWrapper(
            app: MaterialApp.router(
              routerConfig: AppRouter.router,
              title: 'Bookly App',
              debugShowCheckedModeBanner: false,
              showSemanticsDebugger: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme: GoogleFonts.montserratTextTheme(
                  ThemeData.dark().textTheme,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
