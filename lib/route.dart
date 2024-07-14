import 'package:get/get.dart';
import 'package:yugiohdecklab/core/constants/routes.dart';
import 'package:yugiohdecklab/core/middleware/middleware.dart';
import 'package:yugiohdecklab/home.dart';
import 'package:yugiohdecklab/view/screens/cardsdetails.dart';
import 'package:yugiohdecklab/view/screens/cards.dart';
import 'package:yugiohdecklab/view/screens/deckslist.dart';
import 'package:yugiohdecklab/view/screens/duelarena.dart';

import 'view/screens/searchcards.dart';
import 'view/screens/publicdeck.dart';

List<GetPage<dynamic>>? routes = [
//  auth path
  GetPage(name: "/", page: () => const Home(), middlewares: [MyMiddleWare()]),
  GetPage(
    name: AppRoute.cardDetails,
    page: () => const CardDetails(),
  ),
  GetPage(
    name: AppRoute.cards,
    page: () => const  Cards(),
  ),
  GetPage(
    name: AppRoute.publicdeck,
    page: () => const  PublicDeck(),
  ),
  GetPage(
    name: AppRoute.decklist,
    page: () => const  DeckList(),
  ),
  GetPage(
    name: AppRoute.duelarena,
    page: () => const  DuelArena(),
  )
];
