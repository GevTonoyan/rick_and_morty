import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/dependency_injection/dependency_injection.dart';
import 'package:rick_and_morty/core/ui_kit/theming/app_theme.dart';
import 'package:rick_and_morty/core/ui_kit/widgets/app_circle.dart';
import 'package:rick_and_morty/core/ui_kit/widgets/app_loader.dart';
import 'package:rick_and_morty/core/ui_kit/widgets/app_network_image.dart';
import 'package:rick_and_morty/features/feature_character_detail/presentation/mobx/character_detail_store.dart';
import 'package:rick_and_morty/features/feature_character_detail/presentation/ui/info_item_widget.dart';

class CharacterDetailScreen extends StatefulWidget {
  final String id;

  const CharacterDetailScreen({
    super.key,
    required this.id,
  });

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  final CharacterDetailStore store = sl<CharacterDetailStore>();

  @override
  void initState() {
    super.initState();
    store.fetchCharacterDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        //  Loading data
        if (store.isLoading) {
          return const AppLoader();
        }

        // Got error while fetching data
        if (store.hasError) {
          return const Center(
            child: Text('Somethig went wrong'),
          );
        }

        // character is null if the character is not found
        if (store.character == null) {
          return const Center(
            child: Text('Character not found'),
          );
        }

        final character = store.character;

        return Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: character!.id.toString(),
                  child: AppNetworkImage(
                    url: character.imageUrl,
                    height: 260,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  child: SafeArea(
                    child: AppCircle(
                      onTap: () {
                        context.pop();
                      },
                      width: 44,
                      height: 44,
                      color: appTheme.colorPalette.whiteSmoke,
                      child: SvgPicture.asset(
                        'assets/icons/arrow-left.svg',
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(
                          appTheme.colorPalette.nero,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InfoItemWidget(
              title: 'Name',
              value: character.name,
              iconPath: 'assets/icons/information.svg',
            ),
            InfoItemWidget(
              title: 'Status',
              value: character.status.title,
              iconPath: character.status.iconPath(),
            ),
            InfoItemWidget(
              title: 'Species',
              value: character.species.title,
              iconPath: character.species.iconPath(),
            ),
            InfoItemWidget(
              title: 'Gender',
              value: character.gender.title,
              iconPath: character.gender.iconPath(),
            ),
          ],
        );
      }),
    );
  }
}
