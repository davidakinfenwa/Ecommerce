
import 'package:auto_route/auto_route.dart';
import 'package:testsell/presentation/screen/food_details.dart';
import 'package:testsell/presentation/screen/tab_screens/tab_screens.dart';

import '../../presentation/screen/auth/sign_in_page.dart';
import '../../presentation/screen/screens.dart';
import '../util/constants.dart';

      
        
        
@CustomAutoRouter(              
  //replaceInRouteName: 'Page,Route',  
  transitionsBuilder: TransitionsBuilders.fadeIn,
  durationInMilliseconds: TimeDuration.kAnimationDuration,            
  routes: <AutoRoute>[              
    AutoRoute(page: SplashScreen, initial: true),              
    AutoRoute(page: StartScreen),              
    AutoRoute(page: SignInPage), 
    AutoRoute(page:TabScreen),
    AutoRoute(page: FoodDetailScreen)
            
  ],              
)              
// extend the generated private router        
class $AppRouter {}  