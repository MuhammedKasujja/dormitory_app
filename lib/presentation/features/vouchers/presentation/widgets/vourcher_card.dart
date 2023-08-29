import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../../data/models/voucher.dart';
import 'card_clipper.dart';
import 'vourcher_details_modal.dart';

class VourcherCard extends StatelessWidget {
  final VourcherModel vourcher;
  const VourcherCard({super.key, required this.vourcher});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showVourcherDetails(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomPaint(
          // size: Size(double.infinity, 60),
          painter: CardClipper(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                    'Datajosdoowrjwrjf jfio[spksdps[dskdsips;ldkpsudsldspdusgdtisdjmspcinsifhdshfjks[dm diyudsthjos l]s-diksdysdsdljmpsdisdksl.]d[sdlsdisdpsd\ps;disdjsds[pdiksudsjdk,sdlsdkosdhsd78hnopdpofj8dshdsnodlsfj79fsdysjkld[spdls]d-sods9dolsd-sp]]]]]'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showVourcherDetails(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return VourcherDetailsModal(
          vourcher: vourcher,
        );
      },
    );
  }
}
  // Column(
  //                       children: [
  //                         Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: CustomPaint(
  //                             // size: Size(double.infinity, 60),
  //                             painter: CardClipper(),
  //                             child: Padding(
  //                               padding: const EdgeInsets.all(16.0),
  //                               child: Column(
  //                                 children: [
  //                                   Text(
  //                                       'Datajosdoowrjwrjf jfio[spksdps[dskdsips;ldkpsudsldspdusgdtisdjmspcinsifhdshfjks[dm diyudsthjos l]s-diksdysdsdljmpsdisdksl.]d[sdlsdisdpsd\ps;disdjsds[pdiksudsjdk,sdlsdkosdhsd78hnopdpofj8dshdsnodlsfj79fsdysjkld[spdls]d-sods9dolsd-sp]]]]]'),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  // Text(
  //     'Datajosdoowrjwrjf jfio[spksdps[dskdsips;ldkpsudsldspdusgdtisdjmspcinsifhdshfjks[dm diyudsthjos l]s-diksdysdsdljmpsdisdksl.]d[sdlsdisdpsd\ps;disdjsds[pdiksudsjdk,sdlsdkosdhsd78hnopdpofj8dshdsnodlsfj79fsdysjkld[spdls]d-sods9dolsd-sp]]]]]'),
  // Transform(
  //   alignment: Alignment.center,
  //   transform: Matrix4.rotationX(math.pi),
  //   child: CustomPaint(
  //     size: Size(double.infinity, 60),
  //     painter: HorizontalClipper(),
  //   ),
  // ),
  // Container(
  //   color: Colors.black,
  //   child: Row(
  //     children: [
  //       Transform(
  //         alignment: Alignment.center,
  //         transform: Matrix4.rotationY(math.pi),
  //         child: CustomPaint(
  //           size: Size(30, 100),
  //           painter: VerticalClipper(),
  //         ),
  //       ),
  //       Flexible(
  //         child: Column(
  //           children: [
  //             Text(
  //               'Datajosdoowrjwrjf jfio[spksdps[dskdsips;ldkpsudsldspdusgdtisdjmspcinsifhdshfjks[dm diyudsthjos l]s-diksdysdsdljmpsdisdksl.]d[sdlsdisdpsd\ps;disdjsds[pdiksudsjdk,sdlsdkosdhsd78hnopdpofj8dshdsnodlsfj79fsdysjkld[spdls]d-sods9dolsd-sp]]]]]',
  //               style: TextStyle(color: Colors.white),
  //             ),
  //           ],
  //         ),
  //       ),
  //       CustomPaint(
  //         size: Size(30, 100),
  //         painter: VerticalClipper(),
  //       ),
  //     ],
  //   ),
  // ),
  // ],
  // ),
//}
