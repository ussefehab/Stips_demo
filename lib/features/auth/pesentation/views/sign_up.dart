import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_strings.dart';
import 'package:stips_demo/features/auth/pesentation/views/widgets/custom_text_field.dart';
import 'package:stips_demo/features/auth/pesentation/views/widgets/welcome_text.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SliverToBoxAdapter(child: SizedBox(height: 600,),),

        SliverToBoxAdapter(child: WelcomeTextWidget(),),
        SliverToBoxAdapter(child: CustomTextField(labelText:APPsTRINGS.firstName,),)
      ],
    );
  }
}  

 