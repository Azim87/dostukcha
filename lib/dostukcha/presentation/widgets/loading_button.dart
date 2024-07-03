import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({
    super.key,
    this.infiniteWidth = false,
    required this.buttonText,
    required this.loading,
    required this.onTap,
    this.textStyle = const TextStyle(),
    this.buttonBorderRadius = 0,
  });

  final String buttonText;
  final bool loading;
  final bool infiniteWidth;
  final Function() onTap;
  final TextStyle textStyle;
  final double buttonBorderRadius;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Material(
          elevation: 1,
          borderRadius: loading
              ? BorderRadius.circular(50)
              : BorderRadius.circular(buttonBorderRadius),
          child: Container(
            width: !loading && infiniteWidth ? double.infinity : null,
            decoration: BoxDecoration(
              borderRadius: loading
                  ? const BorderRadius.all(Radius.circular(50))
                  : BorderRadius.all(Radius.circular(buttonBorderRadius)),
              color: Colors.blue,
            ),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(),
              child: loading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2.5,
                      ),
                    )
                  : SizedBox(
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            buttonText,
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ),
      );
}
