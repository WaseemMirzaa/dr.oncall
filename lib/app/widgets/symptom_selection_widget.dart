import 'package:dr_on_call/config/AppColors.dart';
import 'package:dr_on_call/config/AppIcons.dart';
import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomSelectionWidget extends StatefulWidget {
  final List<String> symptoms;
  final ValueChanged<List<String>> onSelectionChanged;
  final Function(String) onSymptomTap; // New callback for navigation
  final EdgeInsetsGeometry? padding;
  final double spacing;
  final bool showHeartIcon; // New parameter for optional heart icon

  const SymptomSelectionWidget({
    Key? key,
    required this.symptoms,
    required this.onSelectionChanged,
    required this.onSymptomTap, // Required parameter
    this.padding,
    this.spacing = 8.0,
    this.showHeartIcon = false, // Default to false
  }) : super(key: key);

  @override
  _SymptomSelectionWidgetState createState() => _SymptomSelectionWidgetState();
}

class _SymptomSelectionWidgetState extends State<SymptomSelectionWidget> {
  String? _selectedSymptom;
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    List<String> filteredSymptoms = widget.symptoms
        .where((symptom) =>
            symptom.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Search field
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppTextStyles.regular.copyWith(
                      fontSize: 14,
                      color: AppColors.txtBlackColor.withOpacity(0.5)),
                  prefixIcon:
                      const Icon(Icons.search_rounded, color: Colors.black),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (filteredSymptoms.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'No results found',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSans'),
                ),
              ),
            )
          else
            // Symptom list
            ...filteredSymptoms.map((symptom) {
              final isSelected = _selectedSymptom == symptom;
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedSymptom = symptom;

                      // Call the navigation callback with the selected symptom
                      widget.onSymptomTap(symptom);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        // color: const Color(0xFF0A1A2F),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFEEC643), // Yellow border
                          width: 1,
                        ),
                        // Add gradient overlay for selected item
                        gradient: isSelected
                            ? LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xFF0A1A2F).withOpacity(0.7),
                                  const Color(0xFF0A1A3F),
                                ],
                              )
                            : null,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            left: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(symptom,
                                  style: AppTextStyles.bold.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.txtWhiteColor)),
                              // icon widget
                              if (widget.showHeartIcon)
                                Image.asset(
                                  AppIcons
                                      .like, // Make sure this path is correct
                                  width: 20,
                                  height: 20,
                                  color: isSelected
                                      ? AppColors.txtOrangeColor
                                      : AppColors.txtRedColor,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
        ],
      ),
    );
  }
}
