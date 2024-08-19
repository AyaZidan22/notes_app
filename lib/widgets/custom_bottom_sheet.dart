import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String? title, content;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextfeild(
                hinText: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextfeild(
                hinText: 'Content',
                maxLines: 7,
                onSaved: (value) {
                  value = content;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
