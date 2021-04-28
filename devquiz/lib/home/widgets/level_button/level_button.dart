import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButton extends StatelessWidget {

  final String label;

  final config = {
    "Fácil" : {
      "color" : AppColors.levelButtonFacil,
      "borderColor" : AppColors.levelButtonBorderFacil,
      "fontColor" : AppColors.levelButtonTextFacil,
    },
    "Médio" : {
      "color" : AppColors.levelButtonMedio,
      "borderColor" : AppColors.levelButtonBorderMedio,
      "fontColor" : AppColors.levelButtonTextMedio,
    },
    "Difícil" : {
      "color" : AppColors.levelButtonDificil,
      "borderColor" : AppColors.levelButtonBorderDificil,
      "fontColor" : AppColors.levelButtonTextDificil,
    },
    "Perito" : {
      "color" : AppColors.levelButtonPerito,
      "borderColor" : AppColors.levelButtonBorderPerito,
      "fontColor" : AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[label]!["color"]!;
  Color get boderColor => config[label]!["borderColor"]!;
  Color get fontColor => config[label]!["fontColor"]!;

  LevelButton({Key? key, required this.label}) 
    : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: this.color,
        border: Border.fromBorderSide(
          BorderSide(
            color: this.boderColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: this.fontColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}