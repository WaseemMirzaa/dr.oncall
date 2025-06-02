import 'package:dr_on_call/config/AppColors.dart';
import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class News2Tiles extends StatefulWidget {
  final List<String> symptoms;
  final ValueChanged<List<String>> onSelectionChanged;
  final Function(String) onSymptomTap; // Callback for navigation
  final EdgeInsetsGeometry? padding;
  final double spacing;

  const News2Tiles({
    Key? key,
    required this.symptoms,
    required this.onSelectionChanged,
    required this.onSymptomTap, // Required parameter
    this.padding,
    this.spacing = 8.0,
  }) : super(key: key);

  @override
  _SymptomSelectionWidgetState createState() => _SymptomSelectionWidgetState();
}

class _SymptomSelectionWidgetState extends State<News2Tiles> {
  String? _selectedSymptom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...widget.symptoms.map((symptom) {
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
                    child: Row(
                      children: [
                        // Symptom text
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(symptom,
                                style: AppTextStyles.medium.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.txtWhiteColor)),
                          ),
                        ),
                        // Dropdown icon at the front
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: isSelected
                                ? AppColors.txtWhiteColor
                                : AppColors.txtOrangeColor,
                            size: 28,
                          ),
                        ),
                      ],
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
