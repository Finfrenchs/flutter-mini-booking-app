import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../widgets_home.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  late final TextEditingController searchController;
  final FocusNode _focusNode = FocusNode();
  bool _isTextFieldFocused = false;
  bool _showFilters = false;
  String _selectedFilter = '';

  @override
  void initState() {
    searchController = TextEditingController();
    _focusNode.addListener(_handleFocusChange);
    super.initState();
  }

  void _handleFocusChange() {
    setState(() {
      _isTextFieldFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _toggleFilters() {
    setState(() {
      _showFilters = !_showFilters;
    });
  }

  void _selectFilter(String filter) {
    setState(() {
      _selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTextField(
                controller: searchController,
                label: 'Enter your destination',
                showLabel: false,
                borderRadius: 25,
                focusNode: _focusNode,
                suffixIcon: _isTextFieldFocused
                    ? Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 18,
                          focusColor: AppColors.primary,
                          color: AppColors.primary,
                          icon: const Icon(
                            Icons.search,
                            color: AppColors.primary,
                          ),
                        ),
                      )
                    : null,
              ),
            ),
            const SpaceWidth(15),
            Button.filled(
              height: 48,
              width: 68,
              borderRadius: 10,
              onPressed: () => _toggleFilters(),
              icon: Image.asset(
                Assets.icons.icFilter.path,
                color: AppColors.white,
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
        const SpaceHeight(5),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_pin,
              color: AppColors.primary,
              size: 14,
            ),
            SpaceWidth(5),
            Text(
              'Juanda International Airport, Surabaya, Indonesia',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: _showFilters ? 50 : 0,
          child: _showFilters
              ? Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilterOption(
                        icon: Icons.sort_by_alpha,
                        label: 'Distance',
                        selected: _selectedFilter == 'Distance',
                        onTap: () => _selectFilter('Distance'),
                      ),
                      const SpaceWidth(10),
                      FilterOption(
                        icon: Icons.star,
                        label: 'Rating',
                        selected: _selectedFilter == 'Rating',
                        onTap: () => _selectFilter('Rating'),
                      ),
                      const SpaceWidth(10),
                      FilterOption(
                        icon: Icons.attach_money,
                        label: 'Price',
                        selected: _selectedFilter == 'Price',
                        onTap: () => _selectFilter('Price'),
                      ),
                    ],
                  ),
                )
              : null,
        ),
      ],
    );
  }
}
