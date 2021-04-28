import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/chart/chart.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Chart(),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Vamos começar", style: AppTextStyles.heading,),
                      Text("Complete os desafios e avance em conhecimento.", style: AppTextStyles.body,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}