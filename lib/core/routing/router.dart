import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/routing/route_names.dart';
import 'package:rick_and_morty/features/feature_character_detail/presentation/ui/character_detail_screen.dart';
import 'package:rick_and_morty/features/feature_characters/presentation/ui/characters_screen.dart';

final router = GoRouter(
  initialLocation: RouteNames.characters,
  routes: [
    GoRoute(
      path: RouteNames.characters,
      name: RouteNames.characters,
      builder: (context, state) => const CharactersScreen(),
      routes: [
        GoRoute(
          path: '${RouteNames.characterDetail}/:id',
          name: RouteNames.characterDetail,
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '1';
            return CharacterDetailScreen(id: id);
          },
        ),
      ],
    ),
  ],
);
