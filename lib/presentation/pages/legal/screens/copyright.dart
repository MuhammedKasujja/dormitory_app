import 'package:flutter/material.dart';

import 'base_screen.dart';
import 'components/components.dart';

class CopyrightsScreen extends StatelessWidget {
  const CopyrightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLegalScreen(
      title: 'Copyrights',
      children: [
        LegalCardItem(
          model: LegalItemModel(
            title: 'Disclaimer',
            items: [
              LegalBodyItem(
                body:
                    '''Lorem ipsum dolor sit amet consectetur. Sed in massa habitasse pellentesque a. Id in blandit eget et nulla arcu lobortis donec. Velit egestas proin risus nisl faucibus lobortis ullamcorper mauris. Enim feugiat amet commodo lectus posuere amet ac placerat. Tincidunt tempus posuere in vitae. In morbi tellus mauris et diam amet.
        Justo nisl odio ullamcorper et duis fames pharetra pretium. Tellus risus nullam et dictum elit. A porttitor tortor mi egestas et. Blandit convallis sed lacus amet velit. Sed eu nisi imperdiet adipiscing pulvinar urna tellus scelerisque. Non placerat in elementum at tristique at. Leo suscipit et amet nulla. Ac platea diam mi feugiat sociis adipiscing nunc. Est consectetur neque mattis a arcu bibendum quis massa vel. Urna consequat proin aenean tempor nisi vitae morbi. Ornare amet sit ipsum lacus sit turpis ut. Tortor mauris semper eu eu ut iaculis suspendisse sit. Erat sit diam mattis vestibulum leo sit quam.
        Ut ornare sit ut proin non tellus fringilla aliquet ridiculus. Quisque sed turpis nulla ullamcorper in quam vel donec. Amet mattis ornare hendrerit aliquet. Ipsum sociis magnis faucibus faucibus aliquam. Tellus aenean eu duis sit pellentesque cursus mauris vitae diam.
        ''',
              ),
            ],
          ),
        ),
        LegalCardItem(
          model: LegalItemModel(
            title: 'Copyright Notice',
            items: [
              LegalBodyItem(
                body:
                    '''Lorem ipsum dolor sit amet consectetur. Sed in massa habitasse pellentesque a. Id in blandit eget et nulla arcu lobortis donec. Velit egestas proin risus nisl faucibus lobortis ullamcorper mauris. Enim feugiat amet commodo lectus posuere amet ac placerat. Tincidunt tempus posuere in vitae. In morbi tellus mauris et diam amet.
        Justo nisl odio ullamcorper et duis fames pharetra pretium. Tellus risus nullam et dictum elit. A porttitor tortor mi egestas et. Blandit convallis sed lacus amet velit. Sed eu nisi imperdiet adipiscing pulvinar urna tellus scelerisque. Non placerat in elementum at tristique at. Leo suscipit et amet nulla. Ac platea diam mi feugiat sociis adipiscing nunc. Est consectetur neque mattis a arcu bibendum quis massa vel. Urna consequat proin aenean tempor nisi vitae morbi. Ornare amet sit ipsum lacus sit turpis ut. Tortor mauris semper eu eu ut iaculis suspendisse sit. Erat sit diam mattis vestibulum leo sit quam.
        Ut ornare sit ut proin non tellus fringilla aliquet ridiculus. Quisque sed turpis nulla ullamcorper in quam vel donec. Amet mattis ornare hendrerit aliquet. Ipsum sociis magnis faucibus faucibus aliquam. Tellus aenean eu duis sit pellentesque cursus mauris vitae diam.
        ''',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
