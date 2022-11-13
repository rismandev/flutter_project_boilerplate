import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/theme/theme_values.dart';

void showSuccessDialog(
  BuildContext context, {
  required String text,
  required VoidCallback onConfirm,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    useSafeArea: true,
    builder: (ctx) {
      final size = MediaQuery.of(ctx).size;
      final textTheme = Theme.of(ctx).textTheme;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            width: size.width - 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check_circle_outline_rounded,
                  size: 50,
                  color: colorPrimary,
                ),
                const SizedBox(height: 12),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: textTheme.labelMedium?.copyWith(
                    color: colorPrimary,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                    onConfirm();
                  },
                  child: const Text("Ok", textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
