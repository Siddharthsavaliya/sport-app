import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/auth/forget_password_bloc/forget_pass_bloc.dart';
import 'package:sport_app/bloc/auth/login_bloc/login_bloc.dart';
import 'package:sport_app/bloc/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:sport_app/bloc/common_bloc/common_bloc.dart';
import 'package:sport_app/bloc/ground_bloc/ground_bloc.dart';
import 'package:sport_app/bloc/membership_bloc/membership_bloc.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/screens/on_boarding/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => ForgetPasswordBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => MembershipBloc(),
        ),
        BlocProvider(
          create: (context) => GroundBloc(),
        ),
        BlocProvider(
          create: (context) => WishlistBloc(),
        ),
        BlocProvider(
          create: (context) => CommonBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sport App',
          theme: ThemeData(
            splashColor: Colors.transparent,
            scaffoldBackgroundColor: AppColors.white,
            useMaterial3: false,
          ),
          builder: (context, child) {
            return ScrollConfiguration(
              behavior:
                  NoGlowScrollBehavior(), // Apply the custom scroll behavior globally
              child: child!,
            );
          },
          home: const SplashScreen()),
    );
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
