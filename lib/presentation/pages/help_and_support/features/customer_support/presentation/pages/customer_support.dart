import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/contact_us_option.dart';

class CustomerSupportScreen extends StatelessWidget {
  const CustomerSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Customer Support'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox().medium(),
              const Text(
                      '''We are committed to providing exceptional customer support every step of the way. Our dedicated team is here to assist you with any queries or concerns you may have.''')
                  .secondary(),
              const SizedBox().large(),
              ContactUsOption(
                name: 'Chat Us',
                iconPath: Assets.chatIcon,
              ),
              const SizedBox().medium(),
              const ORWidget(captalize: true),
              const SizedBox().medium(),
              ContactUsOption(
                name: 'Call Us',
                iconPath:Assets.callIcon,
                value: '0804637376747',
              ),
              const SizedBox().medium(),
              ContactUsOption(
                name: 'Email us at',
                iconPath: Assets.supportIcon,
                value: 'support@paramountstudents.com',
              ),
              const SizedBox().large(),
              const ORWidget(captalize: true),
              const SizedBox().large(),
              const Text('Complete this form to help us address your issues.')
                  .description(),
              CustomTextfield(
                onChange: (value) {},
                label: '',
                hint: 'wajahat.sheikh@yahoo.com',
                inputType: TextInputType.emailAddress,
              ),
              CustomTextfield(
                onChange: (value) {},
                label: '',
                hint: 'Subject',
              ),
              CustomTextfield(
                onChange: (value) {},
                label: '',
                hint: '',
                inputType: TextInputType.multiline,
              ),
              const SizedBox().large(),
              CustomButton(
                label: 'Submit',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AppAlertDialog(
                      isNotification: true,
                      btnText: 'Close',
                      icon: SvgPicture.string(Assets.accountVerifiedIcon),
                      title:
                          'Sent Successfully, we will get back to you shortly',
                      onAction: () => Navigator.pop(context),
                    ),
                  );
                },
              ),
              const SizedBox().small(),
            ],
          ),
        ),
      ),
    );
  }
}
