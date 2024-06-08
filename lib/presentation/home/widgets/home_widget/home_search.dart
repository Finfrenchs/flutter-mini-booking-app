// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mini_booking_app/presentation/home/bloc/product/product_bloc.dart';

import '../../../../core/core.dart';
import '../widgets_home.dart';

class HomeSearch extends StatefulWidget {
  final TextEditingController searchController;
  final String location;
  final VoidCallback onTap;
  const HomeSearch({
    super.key,
    required this.searchController,
    required this.location,
    required this.onTap,
  });

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  //late final TextEditingController searchController;
  final FocusNode _focusNode = FocusNode();
  bool _isTextFieldFocused = false;
  bool _showFilters = false;
  String _selectedFilter = '';

  @override
  void initState() {
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
                controller: widget.searchController,
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
                          onPressed: () {
                            if (widget.searchController.text.isNotEmpty) {
                              context.read<ProductBloc>().add(
                                    ProductEvent.searchLocation(
                                        widget.searchController.text),
                                  );
                            }
                          },
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
        InkWell(
          onTap: widget.onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_pin,
                color: AppColors.primary,
                size: 14,
              ),
              const SpaceWidth(5),
              Flexible(
                child: Text(
                  widget.location,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
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
