import 'package:easybook/core/utils/app_routes.dart';
import 'package:easybook/core/utils/app_styles.dart';
import 'package:easybook/presentation/widgets/components/list_tile.dart';
import 'package:flutter/material.dart';
import '../components/card_widget.dart';

class HomeViewWidgets extends StatelessWidget {
  const HomeViewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        _buildCard(),
        _buildTextSection('Recommended'),
        _buildRecommendedList(),
        _buildTextSection('Popular'),
        _buildList(context),
      ],
    );
  }

  SliverToBoxAdapter _buildCard() {
    return const SliverToBoxAdapter(
      child: CardWidget(),
    );
  }

  SliverToBoxAdapter _buildTextSection(String text) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 35, bottom: 10),
        child: Text(
          text,
          style: AppStyles.bodyLarge,
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildRecommendedList() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 190,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return _buildRecommendedItem(context);
          },
        ),
      ),
    );
  }

  Widget _buildRecommendedItem(context) {
    return InkWell(
      onTap: () {
        
        Navigator.pushNamed(
          context,
         AppRoutes.productdetail
         );
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Hero(
          
          tag: 'bookImage',
          child: Image.asset('assets/images/bookex.png')),
      ),
    );
  }

  SliverList _buildList(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const SizedBox(
            height: 180,
            child: CustomListTile(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
