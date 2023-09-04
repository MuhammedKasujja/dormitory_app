import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.31738035264483627).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainterResponsive extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.009875390, size.height * 0.9960317);
    path_0.lineTo(size.width * 0.9882343, size.height * 0.9960317);
    path_0.cubicTo(
        size.width * 0.9907708,
        size.height * 0.9960317,
        size.width * 0.9932015,
        size.height * 0.9928968,
        size.width * 0.9949950,
        size.height * 0.9873095);
    path_0.cubicTo(
        size.width * 0.9967884,
        size.height * 0.9817302,
        size.width * 0.9977960,
        size.height * 0.9741667,
        size.width * 0.9977960,
        size.height * 0.9662698);
    path_0.lineTo(size.width * 0.9977960, size.height * 0.5793651);
    path_0.cubicTo(
        size.width * 0.9910353,
        size.height * 0.5793651,
        size.width * 0.9845516,
        size.height * 0.5710024,
        size.width * 0.9797708,
        size.height * 0.5561183);
    path_0.cubicTo(
        size.width * 0.9749899,
        size.height * 0.5412349,
        size.width * 0.9723023,
        size.height * 0.5210492,
        size.width * 0.9723023,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.9723023,
        size.height * 0.4789508,
        size.width * 0.9749899,
        size.height * 0.4587651,
        size.width * 0.9797708,
        size.height * 0.4438817);
    path_0.cubicTo(
        size.width * 0.9845516,
        size.height * 0.4289976,
        size.width * 0.9910353,
        size.height * 0.4206349,
        size.width * 0.9977960,
        size.height * 0.4206349);
    path_0.lineTo(size.width * 0.9977960, size.height * 0.03373016);
    path_0.cubicTo(
        size.width * 0.9977960,
        size.height * 0.02583683,
        size.width * 0.9967884,
        size.height * 0.01826897,
        size.width * 0.9949950,
        size.height * 0.01268754);
    path_0.cubicTo(
        size.width * 0.9932015,
        size.height * 0.007106119,
        size.width * 0.9907708,
        size.height * 0.003968254,
        size.width * 0.9882343,
        size.height * 0.003968254);
    path_0.lineTo(size.width * 0.2958388, size.height * 0.003968254);
    path_0.cubicTo(
        size.width * 0.2963955,
        size.height * 0.006984913,
        size.width * 0.2966851,
        size.height * 0.01040365,
        size.width * 0.2966851,
        size.height * 0.01388405);
    path_0.cubicTo(
        size.width * 0.2966826,
        size.height * 0.01736444,
        size.width * 0.2963929,
        size.height * 0.02078214,
        size.width * 0.2958312,
        size.height * 0.02379500);
    path_0.cubicTo(
        size.width * 0.2952720,
        size.height * 0.02680786,
        size.width * 0.2944660,
        size.height * 0.02931230,
        size.width * 0.2934987,
        size.height * 0.03105143);
    path_0.cubicTo(
        size.width * 0.2925290,
        size.height * 0.03279048,
        size.width * 0.2914282,
        size.height * 0.03370595,
        size.width * 0.2903123,
        size.height * 0.03370595);
    path_0.cubicTo(
        size.width * 0.2891940,
        size.height * 0.03370595,
        size.width * 0.2880982,
        size.height * 0.03279048,
        size.width * 0.2871310,
        size.height * 0.03105143);
    path_0.cubicTo(
        size.width * 0.2861612,
        size.height * 0.02931230,
        size.width * 0.2853552,
        size.height * 0.02680786,
        size.width * 0.2847960,
        size.height * 0.02379500);
    path_0.cubicTo(
        size.width * 0.2842368,
        size.height * 0.02078214,
        size.width * 0.2839395,
        size.height * 0.01736444,
        size.width * 0.2839370,
        size.height * 0.01388405);
    path_0.cubicTo(
        size.width * 0.2839370,
        size.height * 0.01040365,
        size.width * 0.2842317,
        size.height * 0.006984913,
        size.width * 0.2847909,
        size.height * 0.003968254);
    path_0.lineTo(size.width * 0.009875390, size.height * 0.003968254);
    path_0.cubicTo(
        size.width * 0.007339824,
        size.height * 0.003968254,
        size.width * 0.004908715,
        size.height * 0.007106119,
        size.width * 0.003115793,
        size.height * 0.01268754);
    path_0.cubicTo(
        size.width * 0.001322864,
        size.height * 0.01826897,
        size.width * 0.0003148615,
        size.height * 0.02583683,
        size.width * 0.0003148615,
        size.height * 0.03373016);
    path_0.lineTo(size.width * 0.0003148615, size.height * 0.4206349);
    path_0.cubicTo(
        size.width * 0.007076474,
        size.height * 0.4206349,
        size.width * 0.01355927,
        size.height * 0.4289976,
        size.width * 0.01834045,
        size.height * 0.4438817);
    path_0.cubicTo(
        size.width * 0.02312164,
        size.height * 0.4587651,
        size.width * 0.02580957,
        size.height * 0.4789508,
        size.width * 0.02580957,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.02580957,
        size.height * 0.5210492,
        size.width * 0.02312164,
        size.height * 0.5412349,
        size.width * 0.01834045,
        size.height * 0.5561183);
    path_0.cubicTo(
        size.width * 0.01355927,
        size.height * 0.5710024,
        size.width * 0.007076474,
        size.height * 0.5793651,
        size.width * 0.0003148615,
        size.height * 0.5793651);
    path_0.lineTo(size.width * 0.0003148615, size.height * 0.9662698);
    path_0.cubicTo(
        size.width * 0.0003148615,
        size.height * 0.9741667,
        size.width * 0.001322864,
        size.height * 0.9817302,
        size.width * 0.003115793,
        size.height * 0.9873095);
    path_0.cubicTo(
        size.width * 0.004908715,
        size.height * 0.9928968,
        size.width * 0.007339824,
        size.height * 0.9960317,
        size.width * 0.009875390,
        size.height * 0.9960317);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.9464286);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.9464286,
        size.width * 0.2928111,
        size.height * 0.9475873,
        size.width * 0.2938589,
        size.height * 0.9497698);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.9519524,
        size.width * 0.2957229,
        size.height * 0.9550556,
        size.width * 0.2962065,
        size.height * 0.9586825);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.9623016,
        size.width * 0.2968136,
        size.height * 0.9662937,
        size.width * 0.2965668,
        size.height * 0.9701429);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.9739921,
        size.width * 0.2957154,
        size.height * 0.9775238,
        size.width * 0.2948237,
        size.height * 0.9803016);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.9830714,
        size.width * 0.2927985,
        size.height * 0.9849603,
        size.width * 0.2915617,
        size.height * 0.9857302);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.9864921,
        size.width * 0.2890428,
        size.height * 0.9861032,
        size.width * 0.2878766,
        size.height * 0.9846032);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.9830952,
        size.width * 0.2857204,
        size.height * 0.9805556,
        size.width * 0.2850202,
        size.height * 0.9772937);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.9740317,
        size.width * 0.2839446,
        size.height * 0.9701905,
        size.width * 0.2839446,
        size.height * 0.9662698);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.9610079,
        size.width * 0.2846146,
        size.height * 0.9559603,
        size.width * 0.2858111,
        size.height * 0.9522381);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.9485238,
        size.width * 0.2886272,
        size.height * 0.9464286,
        size.width * 0.2903174,
        size.height * 0.9464286);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.8670635);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.8670635,
        size.width * 0.2928111,
        size.height * 0.8682222,
        size.width * 0.2938589,
        size.height * 0.8704048);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.8725873,
        size.width * 0.2957229,
        size.height * 0.8756905,
        size.width * 0.2962065,
        size.height * 0.8793175);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.8829365,
        size.width * 0.2968136,
        size.height * 0.8869286,
        size.width * 0.2965668,
        size.height * 0.8907778);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.8946270,
        size.width * 0.2957154,
        size.height * 0.8981587,
        size.width * 0.2948237,
        size.height * 0.9009365);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.9037063,
        size.width * 0.2927985,
        size.height * 0.9055952,
        size.width * 0.2915617,
        size.height * 0.9063651);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.9071270,
        size.width * 0.2890428,
        size.height * 0.9067381,
        size.width * 0.2878766,
        size.height * 0.9052381);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.9037302,
        size.width * 0.2857204,
        size.height * 0.9011905,
        size.width * 0.2850202,
        size.height * 0.8979286);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.8946667,
        size.width * 0.2839446,
        size.height * 0.8908254,
        size.width * 0.2839446,
        size.height * 0.8869048);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.8816429,
        size.width * 0.2846146,
        size.height * 0.8765952,
        size.width * 0.2858111,
        size.height * 0.8728730);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.8691587,
        size.width * 0.2886272,
        size.height * 0.8670635,
        size.width * 0.2903174,
        size.height * 0.8670635);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.7876984);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.7876984,
        size.width * 0.2928111,
        size.height * 0.7888603,
        size.width * 0.2938589,
        size.height * 0.7910405);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.7932206,
        size.width * 0.2957229,
        size.height * 0.7963254,
        size.width * 0.2962065,
        size.height * 0.7999524);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.8035714,
        size.width * 0.2968136,
        size.height * 0.8075635,
        size.width * 0.2965668,
        size.height * 0.8114127);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.8152619,
        size.width * 0.2957154,
        size.height * 0.8187937,
        size.width * 0.2948237,
        size.height * 0.8215714);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.8243413,
        size.width * 0.2927985,
        size.height * 0.8262302,
        size.width * 0.2915617,
        size.height * 0.8270000);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.8277619,
        size.width * 0.2890428,
        size.height * 0.8273730,
        size.width * 0.2878766,
        size.height * 0.8258730);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.8243651,
        size.width * 0.2857204,
        size.height * 0.8218254,
        size.width * 0.2850202,
        size.height * 0.8185635);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.8153016,
        size.width * 0.2839446,
        size.height * 0.8114603,
        size.width * 0.2839446,
        size.height * 0.8075397);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.8022778,
        size.width * 0.2846146,
        size.height * 0.7972302,
        size.width * 0.2858111,
        size.height * 0.7935111);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.7897905,
        size.width * 0.2886272,
        size.height * 0.7876984,
        size.width * 0.2903174,
        size.height * 0.7876984);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.7083333);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.7083333,
        size.width * 0.2928111,
        size.height * 0.7094952,
        size.width * 0.2938589,
        size.height * 0.7116754);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.7138556,
        size.width * 0.2957229,
        size.height * 0.7169587,
        size.width * 0.2962065,
        size.height * 0.7205841);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.7242095,
        size.width * 0.2968136,
        size.height * 0.7281960,
        size.width * 0.2965668,
        size.height * 0.7320452);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.7358937,
        size.width * 0.2957154,
        size.height * 0.7394278,
        size.width * 0.2948237,
        size.height * 0.7422032);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.7449778,
        size.width * 0.2927985,
        size.height * 0.7468675,
        size.width * 0.2915617,
        size.height * 0.7476333);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.7483984,
        size.width * 0.2890428,
        size.height * 0.7480063,
        size.width * 0.2878766,
        size.height * 0.7465048);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.7450032,
        size.width * 0.2857204,
        size.height * 0.7424627,
        size.width * 0.2850202,
        size.height * 0.7392000);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.7359365,
        size.width * 0.2839446,
        size.height * 0.7320992,
        size.width * 0.2839446,
        size.height * 0.7281746);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.7229127,
        size.width * 0.2846146,
        size.height * 0.7178675,
        size.width * 0.2858111,
        size.height * 0.7141460);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.7104254,
        size.width * 0.2886272,
        size.height * 0.7083333,
        size.width * 0.2903174,
        size.height * 0.7083333);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.6289683);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.6289683,
        size.width * 0.2928111,
        size.height * 0.6301302,
        size.width * 0.2938589,
        size.height * 0.6323103);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.6344905,
        size.width * 0.2957229,
        size.height * 0.6375937,
        size.width * 0.2962065,
        size.height * 0.6412190);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.6448444,
        size.width * 0.2968136,
        size.height * 0.6488310,
        size.width * 0.2965668,
        size.height * 0.6526802);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.6565286,
        size.width * 0.2957154,
        size.height * 0.6600627,
        size.width * 0.2948237,
        size.height * 0.6628381);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.6656127,
        size.width * 0.2927985,
        size.height * 0.6675024,
        size.width * 0.2915617,
        size.height * 0.6682683);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.6690333,
        size.width * 0.2890428,
        size.height * 0.6686413,
        size.width * 0.2878766,
        size.height * 0.6671397);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.6656381,
        size.width * 0.2857204,
        size.height * 0.6630976,
        size.width * 0.2850202,
        size.height * 0.6598349);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.6565714,
        size.width * 0.2839446,
        size.height * 0.6527341,
        size.width * 0.2839446,
        size.height * 0.6488095);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.6435476,
        size.width * 0.2846146,
        size.height * 0.6385024,
        size.width * 0.2858111,
        size.height * 0.6347810);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.6310603,
        size.width * 0.2886272,
        size.height * 0.6289683,
        size.width * 0.2903174,
        size.height * 0.6289683);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.5496032);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.5496032,
        size.width * 0.2928111,
        size.height * 0.5507651,
        size.width * 0.2938589,
        size.height * 0.5529452);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.5551254,
        size.width * 0.2957229,
        size.height * 0.5582286,
        size.width * 0.2962065,
        size.height * 0.5618540);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.5654794,
        size.width * 0.2968136,
        size.height * 0.5694659,
        size.width * 0.2965668,
        size.height * 0.5733151);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.5771635,
        size.width * 0.2957154,
        size.height * 0.5806976,
        size.width * 0.2948237,
        size.height * 0.5834730);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.5862476,
        size.width * 0.2927985,
        size.height * 0.5881373,
        size.width * 0.2915617,
        size.height * 0.5889032);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.5896683,
        size.width * 0.2890428,
        size.height * 0.5892762,
        size.width * 0.2878766,
        size.height * 0.5877746);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.5862730,
        size.width * 0.2857204,
        size.height * 0.5837325,
        size.width * 0.2850202,
        size.height * 0.5804698);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.5772063,
        size.width * 0.2839446,
        size.height * 0.5733690,
        size.width * 0.2839446,
        size.height * 0.5694444);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.5641825,
        size.width * 0.2846146,
        size.height * 0.5591373,
        size.width * 0.2858111,
        size.height * 0.5554159);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.5516952,
        size.width * 0.2886272,
        size.height * 0.5496032,
        size.width * 0.2903174,
        size.height * 0.5496032);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.4702381);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.4702381,
        size.width * 0.2928111,
        size.height * 0.4714000,
        size.width * 0.2938589,
        size.height * 0.4735802);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.4757603,
        size.width * 0.2957229,
        size.height * 0.4788635,
        size.width * 0.2962065,
        size.height * 0.4824889);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.4861143,
        size.width * 0.2968136,
        size.height * 0.4901008,
        size.width * 0.2965668,
        size.height * 0.4939500);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.4977984,
        size.width * 0.2957154,
        size.height * 0.5013325,
        size.width * 0.2948237,
        size.height * 0.5041079);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.5068825,
        size.width * 0.2927985,
        size.height * 0.5087722,
        size.width * 0.2915617,
        size.height * 0.5095381);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.5103032,
        size.width * 0.2890428,
        size.height * 0.5099111,
        size.width * 0.2878766,
        size.height * 0.5084095);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.5069071,
        size.width * 0.2857204,
        size.height * 0.5043675,
        size.width * 0.2850202,
        size.height * 0.5011048);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.4978413,
        size.width * 0.2839446,
        size.height * 0.4940040,
        size.width * 0.2839446,
        size.height * 0.4900794);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.4848175,
        size.width * 0.2846146,
        size.height * 0.4797722,
        size.width * 0.2858111,
        size.height * 0.4760508);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.4723302,
        size.width * 0.2886272,
        size.height * 0.4702381,
        size.width * 0.2903174,
        size.height * 0.4702381);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.3908730);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.3908730,
        size.width * 0.2928111,
        size.height * 0.3920349,
        size.width * 0.2938589,
        size.height * 0.3942151);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.3963952,
        size.width * 0.2957229,
        size.height * 0.3994984,
        size.width * 0.2962065,
        size.height * 0.4031238);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.4067492,
        size.width * 0.2968136,
        size.height * 0.4107357,
        size.width * 0.2965668,
        size.height * 0.4145849);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.4184333,
        size.width * 0.2957154,
        size.height * 0.4219675,
        size.width * 0.2948237,
        size.height * 0.4247429);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.4275175,
        size.width * 0.2927985,
        size.height * 0.4294071,
        size.width * 0.2915617,
        size.height * 0.4301730);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.4309381,
        size.width * 0.2890428,
        size.height * 0.4305460,
        size.width * 0.2878766,
        size.height * 0.4290444);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.4275421,
        size.width * 0.2857204,
        size.height * 0.4250024,
        size.width * 0.2850202,
        size.height * 0.4217397);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.4184762,
        size.width * 0.2839446,
        size.height * 0.4146389,
        size.width * 0.2839446,
        size.height * 0.4107143);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.4054524,
        size.width * 0.2846146,
        size.height * 0.4004071,
        size.width * 0.2858111,
        size.height * 0.3966857);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.3929651,
        size.width * 0.2886272,
        size.height * 0.3908730,
        size.width * 0.2903174,
        size.height * 0.3908730);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.3115079);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.3115079,
        size.width * 0.2928111,
        size.height * 0.3126698,
        size.width * 0.2938589,
        size.height * 0.3148500);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.3170302,
        size.width * 0.2957229,
        size.height * 0.3201333,
        size.width * 0.2962065,
        size.height * 0.3237587);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.3273841,
        size.width * 0.2968136,
        size.height * 0.3313706,
        size.width * 0.2965668,
        size.height * 0.3352198);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.3390683,
        size.width * 0.2957154,
        size.height * 0.3426024,
        size.width * 0.2948237,
        size.height * 0.3453778);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.3481524,
        size.width * 0.2927985,
        size.height * 0.3500421,
        size.width * 0.2915617,
        size.height * 0.3508079);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.3515730,
        size.width * 0.2890428,
        size.height * 0.3511810,
        size.width * 0.2878766,
        size.height * 0.3496794);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.3481770,
        size.width * 0.2857204,
        size.height * 0.3456373,
        size.width * 0.2850202,
        size.height * 0.3423746);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.3391111,
        size.width * 0.2839446,
        size.height * 0.3352738,
        size.width * 0.2839446,
        size.height * 0.3313492);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.3260873,
        size.width * 0.2846146,
        size.height * 0.3210421,
        size.width * 0.2858111,
        size.height * 0.3173206);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.3136000,
        size.width * 0.2886272,
        size.height * 0.3115079,
        size.width * 0.2903174,
        size.height * 0.3115079);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.2321429);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.2321429,
        size.width * 0.2928111,
        size.height * 0.2333048,
        size.width * 0.2938589,
        size.height * 0.2354849);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.2376651,
        size.width * 0.2957229,
        size.height * 0.2407683,
        size.width * 0.2962065,
        size.height * 0.2443937);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.2480190,
        size.width * 0.2968136,
        size.height * 0.2520056,
        size.width * 0.2965668,
        size.height * 0.2558548);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.2597032,
        size.width * 0.2957154,
        size.height * 0.2632373,
        size.width * 0.2948237,
        size.height * 0.2660127);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.2687873,
        size.width * 0.2927985,
        size.height * 0.2706770,
        size.width * 0.2915617,
        size.height * 0.2714429);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.2722079,
        size.width * 0.2890428,
        size.height * 0.2718159,
        size.width * 0.2878766,
        size.height * 0.2703143);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.2688119,
        size.width * 0.2857204,
        size.height * 0.2662722,
        size.width * 0.2850202,
        size.height * 0.2630095);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.2597460,
        size.width * 0.2839446,
        size.height * 0.2559087,
        size.width * 0.2839446,
        size.height * 0.2519841);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.2467222,
        size.width * 0.2846146,
        size.height * 0.2416770,
        size.width * 0.2858111,
        size.height * 0.2379556);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.2342349,
        size.width * 0.2886272,
        size.height * 0.2321429,
        size.width * 0.2903174,
        size.height * 0.2321429);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.1527778);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.1527778,
        size.width * 0.2928111,
        size.height * 0.1539397,
        size.width * 0.2938589,
        size.height * 0.1561198);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.1583000,
        size.width * 0.2957229,
        size.height * 0.1614032,
        size.width * 0.2962065,
        size.height * 0.1650286);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.1686540,
        size.width * 0.2968136,
        size.height * 0.1726405,
        size.width * 0.2965668,
        size.height * 0.1764897);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.1803381,
        size.width * 0.2957154,
        size.height * 0.1838722,
        size.width * 0.2948237,
        size.height * 0.1866476);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.1894222,
        size.width * 0.2927985,
        size.height * 0.1913119,
        size.width * 0.2915617,
        size.height * 0.1920778);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.1928429,
        size.width * 0.2890428,
        size.height * 0.1924508,
        size.width * 0.2878766,
        size.height * 0.1909492);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.1894476,
        size.width * 0.2857204,
        size.height * 0.1869071,
        size.width * 0.2850202,
        size.height * 0.1836444);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.1803810,
        size.width * 0.2839446,
        size.height * 0.1765437,
        size.width * 0.2839446,
        size.height * 0.1726190);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.1673571,
        size.width * 0.2846146,
        size.height * 0.1623119,
        size.width * 0.2858111,
        size.height * 0.1585905);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.1548698,
        size.width * 0.2886272,
        size.height * 0.1527778,
        size.width * 0.2903174,
        size.height * 0.1527778);
    path_0.close();
    path_0.moveTo(size.width * 0.2903174, size.height * 0.07341270);
    path_0.cubicTo(
        size.width * 0.2915768,
        size.height * 0.07341270,
        size.width * 0.2928111,
        size.height * 0.07457492,
        size.width * 0.2938589,
        size.height * 0.07675508);
    path_0.cubicTo(
        size.width * 0.2949068,
        size.height * 0.07893532,
        size.width * 0.2957229,
        size.height * 0.08203810,
        size.width * 0.2962065,
        size.height * 0.08566349);
    path_0.cubicTo(
        size.width * 0.2966877,
        size.height * 0.08928889,
        size.width * 0.2968136,
        size.height * 0.09327540,
        size.width * 0.2965668,
        size.height * 0.09712460);
    path_0.cubicTo(
        size.width * 0.2963199,
        size.height * 0.1009730,
        size.width * 0.2957154,
        size.height * 0.1045071,
        size.width * 0.2948237,
        size.height * 0.1072825);
    path_0.cubicTo(
        size.width * 0.2939320,
        size.height * 0.1100571,
        size.width * 0.2927985,
        size.height * 0.1119468,
        size.width * 0.2915617,
        size.height * 0.1127127);
    path_0.cubicTo(
        size.width * 0.2903249,
        size.height * 0.1134778,
        size.width * 0.2890428,
        size.height * 0.1130857,
        size.width * 0.2878766,
        size.height * 0.1115841);
    path_0.cubicTo(
        size.width * 0.2867128,
        size.height * 0.1100825,
        size.width * 0.2857204,
        size.height * 0.1075421,
        size.width * 0.2850202,
        size.height * 0.1042794);
    path_0.cubicTo(
        size.width * 0.2843199,
        size.height * 0.1010159,
        size.width * 0.2839446,
        size.height * 0.09717857,
        size.width * 0.2839446,
        size.height * 0.09325397);
    path_0.cubicTo(
        size.width * 0.2839446,
        size.height * 0.08799206,
        size.width * 0.2846146,
        size.height * 0.08294683,
        size.width * 0.2858111,
        size.height * 0.07922556);
    path_0.cubicTo(
        size.width * 0.2870050,
        size.height * 0.07550460,
        size.width * 0.2886272,
        size.height * 0.07341270,
        size.width * 0.2903174,
        size.height * 0.07341270);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.009875390, size.height * 0.9960317);
    path_1.lineTo(size.width * 0.9882343, size.height * 0.9960317);
    path_1.cubicTo(
        size.width * 0.9907708,
        size.height * 0.9960317,
        size.width * 0.9932015,
        size.height * 0.9928968,
        size.width * 0.9949950,
        size.height * 0.9873095);
    path_1.cubicTo(
        size.width * 0.9967884,
        size.height * 0.9817302,
        size.width * 0.9977960,
        size.height * 0.9741667,
        size.width * 0.9977960,
        size.height * 0.9662698);
    path_1.lineTo(size.width * 0.9977960, size.height * 0.5793651);
    path_1.cubicTo(
        size.width * 0.9910353,
        size.height * 0.5793651,
        size.width * 0.9845516,
        size.height * 0.5710024,
        size.width * 0.9797708,
        size.height * 0.5561183);
    path_1.cubicTo(
        size.width * 0.9749899,
        size.height * 0.5412349,
        size.width * 0.9723023,
        size.height * 0.5210492,
        size.width * 0.9723023,
        size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.9723023,
        size.height * 0.4789508,
        size.width * 0.9749899,
        size.height * 0.4587651,
        size.width * 0.9797708,
        size.height * 0.4438817);
    path_1.cubicTo(
        size.width * 0.9845516,
        size.height * 0.4289976,
        size.width * 0.9910353,
        size.height * 0.4206349,
        size.width * 0.9977960,
        size.height * 0.4206349);
    path_1.lineTo(size.width * 0.9977960, size.height * 0.03373016);
    path_1.cubicTo(
        size.width * 0.9977960,
        size.height * 0.02583683,
        size.width * 0.9967884,
        size.height * 0.01826897,
        size.width * 0.9949950,
        size.height * 0.01268754);
    path_1.cubicTo(
        size.width * 0.9932015,
        size.height * 0.007106119,
        size.width * 0.9907708,
        size.height * 0.003968254,
        size.width * 0.9882343,
        size.height * 0.003968254);
    path_1.lineTo(size.width * 0.2958388, size.height * 0.003968254);
    path_1.cubicTo(
        size.width * 0.2963955,
        size.height * 0.006984913,
        size.width * 0.2966851,
        size.height * 0.01040365,
        size.width * 0.2966851,
        size.height * 0.01388405);
    path_1.cubicTo(
        size.width * 0.2966826,
        size.height * 0.01736444,
        size.width * 0.2963929,
        size.height * 0.02078214,
        size.width * 0.2958312,
        size.height * 0.02379500);
    path_1.cubicTo(
        size.width * 0.2952720,
        size.height * 0.02680786,
        size.width * 0.2944660,
        size.height * 0.02931230,
        size.width * 0.2934987,
        size.height * 0.03105143);
    path_1.cubicTo(
        size.width * 0.2925290,
        size.height * 0.03279048,
        size.width * 0.2914282,
        size.height * 0.03370595,
        size.width * 0.2903123,
        size.height * 0.03370595);
    path_1.cubicTo(
        size.width * 0.2891940,
        size.height * 0.03370595,
        size.width * 0.2880982,
        size.height * 0.03279048,
        size.width * 0.2871310,
        size.height * 0.03105143);
    path_1.cubicTo(
        size.width * 0.2861612,
        size.height * 0.02931230,
        size.width * 0.2853552,
        size.height * 0.02680786,
        size.width * 0.2847960,
        size.height * 0.02379500);
    path_1.cubicTo(
        size.width * 0.2842368,
        size.height * 0.02078214,
        size.width * 0.2839395,
        size.height * 0.01736444,
        size.width * 0.2839370,
        size.height * 0.01388405);
    path_1.cubicTo(
        size.width * 0.2839370,
        size.height * 0.01040365,
        size.width * 0.2842317,
        size.height * 0.006984913,
        size.width * 0.2847909,
        size.height * 0.003968254);
    path_1.lineTo(size.width * 0.009875390, size.height * 0.003968254);
    path_1.cubicTo(
        size.width * 0.007339824,
        size.height * 0.003968254,
        size.width * 0.004908715,
        size.height * 0.007106119,
        size.width * 0.003115793,
        size.height * 0.01268754);
    path_1.cubicTo(
        size.width * 0.001322864,
        size.height * 0.01826897,
        size.width * 0.0003148615,
        size.height * 0.02583683,
        size.width * 0.0003148615,
        size.height * 0.03373016);
    path_1.lineTo(size.width * 0.0003148615, size.height * 0.4206349);
    path_1.cubicTo(
        size.width * 0.007076474,
        size.height * 0.4206349,
        size.width * 0.01355927,
        size.height * 0.4289976,
        size.width * 0.01834045,
        size.height * 0.4438817);
    path_1.cubicTo(
        size.width * 0.02312164,
        size.height * 0.4587651,
        size.width * 0.02580957,
        size.height * 0.4789508,
        size.width * 0.02580957,
        size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.02580957,
        size.height * 0.5210492,
        size.width * 0.02312164,
        size.height * 0.5412349,
        size.width * 0.01834045,
        size.height * 0.5561183);
    path_1.cubicTo(
        size.width * 0.01355927,
        size.height * 0.5710024,
        size.width * 0.007076474,
        size.height * 0.5793651,
        size.width * 0.0003148615,
        size.height * 0.5793651);
    path_1.lineTo(size.width * 0.0003148615, size.height * 0.9662698);
    path_1.cubicTo(
        size.width * 0.0003148615,
        size.height * 0.9741667,
        size.width * 0.001322864,
        size.height * 0.9817302,
        size.width * 0.003115793,
        size.height * 0.9873095);
    path_1.cubicTo(
        size.width * 0.004908715,
        size.height * 0.9928968,
        size.width * 0.007339824,
        size.height * 0.9960317,
        size.width * 0.009875390,
        size.height * 0.9960317);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.9464286);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.9464286,
        size.width * 0.2928111,
        size.height * 0.9475873,
        size.width * 0.2938589,
        size.height * 0.9497698);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.9519524,
        size.width * 0.2957229,
        size.height * 0.9550556,
        size.width * 0.2962065,
        size.height * 0.9586825);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.9623016,
        size.width * 0.2968136,
        size.height * 0.9662937,
        size.width * 0.2965668,
        size.height * 0.9701429);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.9739921,
        size.width * 0.2957154,
        size.height * 0.9775238,
        size.width * 0.2948237,
        size.height * 0.9803016);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.9830714,
        size.width * 0.2927985,
        size.height * 0.9849603,
        size.width * 0.2915617,
        size.height * 0.9857302);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.9864921,
        size.width * 0.2890428,
        size.height * 0.9861032,
        size.width * 0.2878766,
        size.height * 0.9846032);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.9830952,
        size.width * 0.2857204,
        size.height * 0.9805556,
        size.width * 0.2850202,
        size.height * 0.9772937);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.9740317,
        size.width * 0.2839446,
        size.height * 0.9701905,
        size.width * 0.2839446,
        size.height * 0.9662698);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.9610079,
        size.width * 0.2846146,
        size.height * 0.9559603,
        size.width * 0.2858111,
        size.height * 0.9522381);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.9485238,
        size.width * 0.2886272,
        size.height * 0.9464286,
        size.width * 0.2903174,
        size.height * 0.9464286);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.8670635);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.8670635,
        size.width * 0.2928111,
        size.height * 0.8682222,
        size.width * 0.2938589,
        size.height * 0.8704048);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.8725873,
        size.width * 0.2957229,
        size.height * 0.8756905,
        size.width * 0.2962065,
        size.height * 0.8793175);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.8829365,
        size.width * 0.2968136,
        size.height * 0.8869286,
        size.width * 0.2965668,
        size.height * 0.8907778);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.8946270,
        size.width * 0.2957154,
        size.height * 0.8981587,
        size.width * 0.2948237,
        size.height * 0.9009365);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.9037063,
        size.width * 0.2927985,
        size.height * 0.9055952,
        size.width * 0.2915617,
        size.height * 0.9063651);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.9071270,
        size.width * 0.2890428,
        size.height * 0.9067381,
        size.width * 0.2878766,
        size.height * 0.9052381);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.9037302,
        size.width * 0.2857204,
        size.height * 0.9011905,
        size.width * 0.2850202,
        size.height * 0.8979286);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.8946667,
        size.width * 0.2839446,
        size.height * 0.8908254,
        size.width * 0.2839446,
        size.height * 0.8869048);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.8816429,
        size.width * 0.2846146,
        size.height * 0.8765952,
        size.width * 0.2858111,
        size.height * 0.8728730);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.8691587,
        size.width * 0.2886272,
        size.height * 0.8670635,
        size.width * 0.2903174,
        size.height * 0.8670635);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.7876984);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.7876984,
        size.width * 0.2928111,
        size.height * 0.7888603,
        size.width * 0.2938589,
        size.height * 0.7910405);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.7932206,
        size.width * 0.2957229,
        size.height * 0.7963254,
        size.width * 0.2962065,
        size.height * 0.7999524);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.8035714,
        size.width * 0.2968136,
        size.height * 0.8075635,
        size.width * 0.2965668,
        size.height * 0.8114127);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.8152619,
        size.width * 0.2957154,
        size.height * 0.8187937,
        size.width * 0.2948237,
        size.height * 0.8215714);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.8243413,
        size.width * 0.2927985,
        size.height * 0.8262302,
        size.width * 0.2915617,
        size.height * 0.8270000);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.8277619,
        size.width * 0.2890428,
        size.height * 0.8273730,
        size.width * 0.2878766,
        size.height * 0.8258730);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.8243651,
        size.width * 0.2857204,
        size.height * 0.8218254,
        size.width * 0.2850202,
        size.height * 0.8185635);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.8153016,
        size.width * 0.2839446,
        size.height * 0.8114603,
        size.width * 0.2839446,
        size.height * 0.8075397);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.8022778,
        size.width * 0.2846146,
        size.height * 0.7972302,
        size.width * 0.2858111,
        size.height * 0.7935111);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.7897905,
        size.width * 0.2886272,
        size.height * 0.7876984,
        size.width * 0.2903174,
        size.height * 0.7876984);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.7083333);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.7083333,
        size.width * 0.2928111,
        size.height * 0.7094952,
        size.width * 0.2938589,
        size.height * 0.7116754);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.7138556,
        size.width * 0.2957229,
        size.height * 0.7169587,
        size.width * 0.2962065,
        size.height * 0.7205841);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.7242095,
        size.width * 0.2968136,
        size.height * 0.7281960,
        size.width * 0.2965668,
        size.height * 0.7320452);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.7358937,
        size.width * 0.2957154,
        size.height * 0.7394278,
        size.width * 0.2948237,
        size.height * 0.7422032);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.7449778,
        size.width * 0.2927985,
        size.height * 0.7468675,
        size.width * 0.2915617,
        size.height * 0.7476333);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.7483984,
        size.width * 0.2890428,
        size.height * 0.7480063,
        size.width * 0.2878766,
        size.height * 0.7465048);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.7450032,
        size.width * 0.2857204,
        size.height * 0.7424627,
        size.width * 0.2850202,
        size.height * 0.7392000);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.7359365,
        size.width * 0.2839446,
        size.height * 0.7320992,
        size.width * 0.2839446,
        size.height * 0.7281746);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.7229127,
        size.width * 0.2846146,
        size.height * 0.7178675,
        size.width * 0.2858111,
        size.height * 0.7141460);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.7104254,
        size.width * 0.2886272,
        size.height * 0.7083333,
        size.width * 0.2903174,
        size.height * 0.7083333);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.6289683);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.6289683,
        size.width * 0.2928111,
        size.height * 0.6301302,
        size.width * 0.2938589,
        size.height * 0.6323103);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.6344905,
        size.width * 0.2957229,
        size.height * 0.6375937,
        size.width * 0.2962065,
        size.height * 0.6412190);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.6448444,
        size.width * 0.2968136,
        size.height * 0.6488310,
        size.width * 0.2965668,
        size.height * 0.6526802);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.6565286,
        size.width * 0.2957154,
        size.height * 0.6600627,
        size.width * 0.2948237,
        size.height * 0.6628381);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.6656127,
        size.width * 0.2927985,
        size.height * 0.6675024,
        size.width * 0.2915617,
        size.height * 0.6682683);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.6690333,
        size.width * 0.2890428,
        size.height * 0.6686413,
        size.width * 0.2878766,
        size.height * 0.6671397);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.6656381,
        size.width * 0.2857204,
        size.height * 0.6630976,
        size.width * 0.2850202,
        size.height * 0.6598349);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.6565714,
        size.width * 0.2839446,
        size.height * 0.6527341,
        size.width * 0.2839446,
        size.height * 0.6488095);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.6435476,
        size.width * 0.2846146,
        size.height * 0.6385024,
        size.width * 0.2858111,
        size.height * 0.6347810);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.6310603,
        size.width * 0.2886272,
        size.height * 0.6289683,
        size.width * 0.2903174,
        size.height * 0.6289683);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.5496032);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.5496032,
        size.width * 0.2928111,
        size.height * 0.5507651,
        size.width * 0.2938589,
        size.height * 0.5529452);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.5551254,
        size.width * 0.2957229,
        size.height * 0.5582286,
        size.width * 0.2962065,
        size.height * 0.5618540);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.5654794,
        size.width * 0.2968136,
        size.height * 0.5694659,
        size.width * 0.2965668,
        size.height * 0.5733151);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.5771635,
        size.width * 0.2957154,
        size.height * 0.5806976,
        size.width * 0.2948237,
        size.height * 0.5834730);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.5862476,
        size.width * 0.2927985,
        size.height * 0.5881373,
        size.width * 0.2915617,
        size.height * 0.5889032);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.5896683,
        size.width * 0.2890428,
        size.height * 0.5892762,
        size.width * 0.2878766,
        size.height * 0.5877746);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.5862730,
        size.width * 0.2857204,
        size.height * 0.5837325,
        size.width * 0.2850202,
        size.height * 0.5804698);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.5772063,
        size.width * 0.2839446,
        size.height * 0.5733690,
        size.width * 0.2839446,
        size.height * 0.5694444);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.5641825,
        size.width * 0.2846146,
        size.height * 0.5591373,
        size.width * 0.2858111,
        size.height * 0.5554159);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.5516952,
        size.width * 0.2886272,
        size.height * 0.5496032,
        size.width * 0.2903174,
        size.height * 0.5496032);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.4702381);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.4702381,
        size.width * 0.2928111,
        size.height * 0.4714000,
        size.width * 0.2938589,
        size.height * 0.4735802);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.4757603,
        size.width * 0.2957229,
        size.height * 0.4788635,
        size.width * 0.2962065,
        size.height * 0.4824889);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.4861143,
        size.width * 0.2968136,
        size.height * 0.4901008,
        size.width * 0.2965668,
        size.height * 0.4939500);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.4977984,
        size.width * 0.2957154,
        size.height * 0.5013325,
        size.width * 0.2948237,
        size.height * 0.5041079);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.5068825,
        size.width * 0.2927985,
        size.height * 0.5087722,
        size.width * 0.2915617,
        size.height * 0.5095381);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.5103032,
        size.width * 0.2890428,
        size.height * 0.5099111,
        size.width * 0.2878766,
        size.height * 0.5084095);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.5069071,
        size.width * 0.2857204,
        size.height * 0.5043675,
        size.width * 0.2850202,
        size.height * 0.5011048);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.4978413,
        size.width * 0.2839446,
        size.height * 0.4940040,
        size.width * 0.2839446,
        size.height * 0.4900794);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.4848175,
        size.width * 0.2846146,
        size.height * 0.4797722,
        size.width * 0.2858111,
        size.height * 0.4760508);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.4723302,
        size.width * 0.2886272,
        size.height * 0.4702381,
        size.width * 0.2903174,
        size.height * 0.4702381);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.3908730);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.3908730,
        size.width * 0.2928111,
        size.height * 0.3920349,
        size.width * 0.2938589,
        size.height * 0.3942151);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.3963952,
        size.width * 0.2957229,
        size.height * 0.3994984,
        size.width * 0.2962065,
        size.height * 0.4031238);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.4067492,
        size.width * 0.2968136,
        size.height * 0.4107357,
        size.width * 0.2965668,
        size.height * 0.4145849);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.4184333,
        size.width * 0.2957154,
        size.height * 0.4219675,
        size.width * 0.2948237,
        size.height * 0.4247429);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.4275175,
        size.width * 0.2927985,
        size.height * 0.4294071,
        size.width * 0.2915617,
        size.height * 0.4301730);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.4309381,
        size.width * 0.2890428,
        size.height * 0.4305460,
        size.width * 0.2878766,
        size.height * 0.4290444);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.4275421,
        size.width * 0.2857204,
        size.height * 0.4250024,
        size.width * 0.2850202,
        size.height * 0.4217397);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.4184762,
        size.width * 0.2839446,
        size.height * 0.4146389,
        size.width * 0.2839446,
        size.height * 0.4107143);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.4054524,
        size.width * 0.2846146,
        size.height * 0.4004071,
        size.width * 0.2858111,
        size.height * 0.3966857);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.3929651,
        size.width * 0.2886272,
        size.height * 0.3908730,
        size.width * 0.2903174,
        size.height * 0.3908730);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.3115079);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.3115079,
        size.width * 0.2928111,
        size.height * 0.3126698,
        size.width * 0.2938589,
        size.height * 0.3148500);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.3170302,
        size.width * 0.2957229,
        size.height * 0.3201333,
        size.width * 0.2962065,
        size.height * 0.3237587);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.3273841,
        size.width * 0.2968136,
        size.height * 0.3313706,
        size.width * 0.2965668,
        size.height * 0.3352198);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.3390683,
        size.width * 0.2957154,
        size.height * 0.3426024,
        size.width * 0.2948237,
        size.height * 0.3453778);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.3481524,
        size.width * 0.2927985,
        size.height * 0.3500421,
        size.width * 0.2915617,
        size.height * 0.3508079);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.3515730,
        size.width * 0.2890428,
        size.height * 0.3511810,
        size.width * 0.2878766,
        size.height * 0.3496794);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.3481770,
        size.width * 0.2857204,
        size.height * 0.3456373,
        size.width * 0.2850202,
        size.height * 0.3423746);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.3391111,
        size.width * 0.2839446,
        size.height * 0.3352738,
        size.width * 0.2839446,
        size.height * 0.3313492);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.3260873,
        size.width * 0.2846146,
        size.height * 0.3210421,
        size.width * 0.2858111,
        size.height * 0.3173206);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.3136000,
        size.width * 0.2886272,
        size.height * 0.3115079,
        size.width * 0.2903174,
        size.height * 0.3115079);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.2321429);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.2321429,
        size.width * 0.2928111,
        size.height * 0.2333048,
        size.width * 0.2938589,
        size.height * 0.2354849);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.2376651,
        size.width * 0.2957229,
        size.height * 0.2407683,
        size.width * 0.2962065,
        size.height * 0.2443937);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.2480190,
        size.width * 0.2968136,
        size.height * 0.2520056,
        size.width * 0.2965668,
        size.height * 0.2558548);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.2597032,
        size.width * 0.2957154,
        size.height * 0.2632373,
        size.width * 0.2948237,
        size.height * 0.2660127);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.2687873,
        size.width * 0.2927985,
        size.height * 0.2706770,
        size.width * 0.2915617,
        size.height * 0.2714429);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.2722079,
        size.width * 0.2890428,
        size.height * 0.2718159,
        size.width * 0.2878766,
        size.height * 0.2703143);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.2688119,
        size.width * 0.2857204,
        size.height * 0.2662722,
        size.width * 0.2850202,
        size.height * 0.2630095);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.2597460,
        size.width * 0.2839446,
        size.height * 0.2559087,
        size.width * 0.2839446,
        size.height * 0.2519841);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.2467222,
        size.width * 0.2846146,
        size.height * 0.2416770,
        size.width * 0.2858111,
        size.height * 0.2379556);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.2342349,
        size.width * 0.2886272,
        size.height * 0.2321429,
        size.width * 0.2903174,
        size.height * 0.2321429);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.1527778);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.1527778,
        size.width * 0.2928111,
        size.height * 0.1539397,
        size.width * 0.2938589,
        size.height * 0.1561198);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.1583000,
        size.width * 0.2957229,
        size.height * 0.1614032,
        size.width * 0.2962065,
        size.height * 0.1650286);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.1686540,
        size.width * 0.2968136,
        size.height * 0.1726405,
        size.width * 0.2965668,
        size.height * 0.1764897);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.1803381,
        size.width * 0.2957154,
        size.height * 0.1838722,
        size.width * 0.2948237,
        size.height * 0.1866476);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.1894222,
        size.width * 0.2927985,
        size.height * 0.1913119,
        size.width * 0.2915617,
        size.height * 0.1920778);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.1928429,
        size.width * 0.2890428,
        size.height * 0.1924508,
        size.width * 0.2878766,
        size.height * 0.1909492);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.1894476,
        size.width * 0.2857204,
        size.height * 0.1869071,
        size.width * 0.2850202,
        size.height * 0.1836444);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.1803810,
        size.width * 0.2839446,
        size.height * 0.1765437,
        size.width * 0.2839446,
        size.height * 0.1726190);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.1673571,
        size.width * 0.2846146,
        size.height * 0.1623119,
        size.width * 0.2858111,
        size.height * 0.1585905);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.1548698,
        size.width * 0.2886272,
        size.height * 0.1527778,
        size.width * 0.2903174,
        size.height * 0.1527778);
    path_1.close();
    path_1.moveTo(size.width * 0.2903174, size.height * 0.07341270);
    path_1.cubicTo(
        size.width * 0.2915768,
        size.height * 0.07341270,
        size.width * 0.2928111,
        size.height * 0.07457492,
        size.width * 0.2938589,
        size.height * 0.07675508);
    path_1.cubicTo(
        size.width * 0.2949068,
        size.height * 0.07893532,
        size.width * 0.2957229,
        size.height * 0.08203810,
        size.width * 0.2962065,
        size.height * 0.08566349);
    path_1.cubicTo(
        size.width * 0.2966877,
        size.height * 0.08928889,
        size.width * 0.2968136,
        size.height * 0.09327540,
        size.width * 0.2965668,
        size.height * 0.09712460);
    path_1.cubicTo(
        size.width * 0.2963199,
        size.height * 0.1009730,
        size.width * 0.2957154,
        size.height * 0.1045071,
        size.width * 0.2948237,
        size.height * 0.1072825);
    path_1.cubicTo(
        size.width * 0.2939320,
        size.height * 0.1100571,
        size.width * 0.2927985,
        size.height * 0.1119468,
        size.width * 0.2915617,
        size.height * 0.1127127);
    path_1.cubicTo(
        size.width * 0.2903249,
        size.height * 0.1134778,
        size.width * 0.2890428,
        size.height * 0.1130857,
        size.width * 0.2878766,
        size.height * 0.1115841);
    path_1.cubicTo(
        size.width * 0.2867128,
        size.height * 0.1100825,
        size.width * 0.2857204,
        size.height * 0.1075421,
        size.width * 0.2850202,
        size.height * 0.1042794);
    path_1.cubicTo(
        size.width * 0.2843199,
        size.height * 0.1010159,
        size.width * 0.2839446,
        size.height * 0.09717857,
        size.width * 0.2839446,
        size.height * 0.09325397);
    path_1.cubicTo(
        size.width * 0.2839446,
        size.height * 0.08799206,
        size.width * 0.2846146,
        size.height * 0.08294683,
        size.width * 0.2858111,
        size.height * 0.07922556);
    path_1.cubicTo(
        size.width * 0.2870050,
        size.height * 0.07550460,
        size.width * 0.2886272,
        size.height * 0.07341270,
        size.width * 0.2903174,
        size.height * 0.07341270);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001259446;
    paint_1_stroke.color = const Color(0xffF1C111).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
