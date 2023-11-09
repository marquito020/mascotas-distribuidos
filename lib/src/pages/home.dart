import 'package:adopet_app/src/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:adopet_app/utils.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homeepr (474:208)
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/image-4-bg-EHQ.png',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x05000000),
              offset: Offset(0 * fem, 1.1355290413 * fem),
              blurRadius: 1.7032933235 * fem,
            ),
            BoxShadow(
              color: Color(0x07000000),
              offset: Offset(0 * fem, 2.7288339138 * fem),
              blurRadius: 4.0932507515 * fem,
            ),
            BoxShadow(
              color: Color(0x08000000),
              offset: Offset(0 * fem, 5.1381521225 * fem),
              blurRadius: 7.7072277069 * fem,
            ),
            BoxShadow(
              color: Color(0x0a000000),
              offset: Offset(0 * fem, 9.1655855179 * fem),
              blurRadius: 13.7483768463 * fem,
            ),
            BoxShadow(
              color: Color(0x0c000000),
              offset: Offset(0 * fem, 17.1432189941 * fem),
              blurRadius: 25.7148265839 * fem,
            ),
            BoxShadow(
              color: Color(0x11000000),
              offset: Offset(0 * fem, 41.0344657898 * fem),
              blurRadius: 61.5516967773 * fem,
            ),
            BoxShadow(
              color: Color(0x33000000),
              offset: Offset(0 * fem, 0 * fem),
              blurRadius: 10 * fem,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              // ongsnJn (474:221)
              left: 9 * fem,
              top: 253 * fem,
              child: Container(
                width: 343 * fem,
                height: 683 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ongsTfp (474:222)
                      left: 9 * fem,
                      top: 183 * fem,
                      child: Container(
                        width: 327 * fem,
                        height: 143 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5aVY (474:223)
                              left: 0 * fem,
                              top: 52 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 327 * fem,
                                  height: 91 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          25.0631389618 * fem),
                                      color: Color(0xffffe3d6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0 * fem, 4 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // maskgrouprCA (474:224)
                              left: 1 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 127.39 * fem,
                                  height: 140 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mask-group-kKU.png',
                                    width: 127.39 * fem,
                                    height: 140 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // perdidosMei (474:227)
                              left: 95 * fem,
                              top: 84 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 110 * fem,
                                  height: 27 * fem,
                                  child: Text(
                                    'Perdidos',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Comfortaa',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.115 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group1231k (475:800)
                      left: 8 * fem,
                      top: 294 * fem,
                      child: Container(
                        width: 327 * fem,
                        height: 143 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5LWe (475:795)
                              left: 0 * fem,
                              top: 52 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 327 * fem,
                                  height: 91 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          25.0631389618 * fem),
                                      color: Color(0xffffe3d6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0 * fem, 4 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // maskgroupzbC (475:796)
                              left: 1 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 127.39 * fem,
                                  height: 140 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mask-group-PKQ.png',
                                    width: 127.39 * fem,
                                    height: 140 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // nosotrosW3k (475:799)
                              left: 93 * fem,
                              top: 84 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 115 * fem,
                                  height: 27 * fem,
                                  child: Text(
                                    'Nosotros',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Comfortaa',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.115 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // icontalkaboutworkBQn (475:843)
                              left: 227 * fem,
                              top: 60 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 80 * fem,
                                  height: 70.81 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-talk-about-work.png',
                                    width: 80 * fem,
                                    height: 70.81 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // ongszt2 (474:235)
                      left: 7 * fem,
                      top: 73 * fem,
                      child: Container(
                        width: 327 * fem,
                        height: 143 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle58DY (474:236)
                              left: 0 * fem,
                              top: 52 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 327 * fem,
                                  height: 91 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          25.0631389618 * fem),
                                      color: Color(0xffffe3d6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0 * fem, 4 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // maskgroupPQN (474:237)
                              left: 1 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 127.39 * fem,
                                  height: 140 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mask-group-1Hc.png',
                                    width: 127.39 * fem,
                                    height: 140 * fem,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              // servicios5nz (474:241)
                              /* left: 88 * fem,
                              top: 93 * fem, */
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onPrimary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                minimumSize: Size(113 * fem, 27 * fem),
                              ),
                              child: Align(
                                child: SizedBox(
                                  width: 113 * fem,
                                  height: 27 * fem,
                                  child: Text(
                                    'Servicios',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Comfortaa',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.115 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconhairdryerPHt (475:370)
                              left: 226 * fem,
                              top: 51 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83 * fem,
                                  height: 83 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-hair-dryer.png',
                                    width: 83 * fem,
                                    height: 83 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // ongsqfg (474:242)
                      left: 7 * fem,
                      top: -32 * fem,
                      child: Container(
                        width: 327 * fem,
                        height: 143 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5Zbg (474:243)
                              left: 0 * fem,
                              top: 52 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 327 * fem,
                                  height: 91 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          25.0631389618 * fem),
                                      color: Color(0xffffe3d6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0 * fem, 4 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // maskgroupSQa (474:244)
                              left: 1 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 127.39 * fem,
                                  height: 140 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mask-group-sgv.png',
                                    width: 127.39 * fem,
                                    height: 140 * fem,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              // saludA5g (474:248)
                              /* left: 108 * fem,
                              top: 84 * fem, */
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                minimumSize: Size(113 * fem, 27 * fem),
                              ),
                              child: Align(
                                child: SizedBox(
                                  width: 73 * fem,
                                  height: 27 * fem,
                                  child: Text(
                                    'Salud',
                                    style: SafeGoogleFont(
                                      'Comfortaa',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.115 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconvaccineR1c (475:336)
                              left: 226 * fem,
                              top: 59 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83 * fem,
                                  height: 78 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-vaccine.png',
                                    width: 83 * fem,
                                    height: 78 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // iconpagenotfounduxN (475:793)
                      left: 245 * fem,
                      top: 235 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 68.57 * fem,
                          height: 80 * fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-page-not-found.png',
                            width: 68.57 * fem,
                            height: 80 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupmedyziv (Bn4EBeZiQ1gB2UCcSymEdY)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 462.59 * fem,
                height: 275.54 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // cadastrariup (474:259)
                      left: 10.0186767578 * fem,
                      top: 82.6002807617 * fem,
                      child: Container(
                        width: 343.57 * fem,
                        height: 139.94 * fem,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(25.0631389618 * fem),
                          gradient: LinearGradient(
                            begin: Alignment(0, -1),
                            end: Alignment(0, 1),
                            colors: <Color>[
                              Color(0xff64adef),
                              Color(0xff3198f4)
                            ],
                            stops: <double>[0, 1],
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/page-1/images/mask-group-PC6.png',
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // c2Jd8 (474:266)
                              left: 199.9736938477 * fem,
                              top: 16.033996582 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 109.72 * fem,
                                  height: 123.9 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/c2-GgA.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // tienesunanimalquenecesitaunhog (474:267)
                              left: 20.9813232422 * fem,
                              top: 20.3997192383 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 190 * fem,
                                  height: 67 * fem,
                                  child: Text(
                                    '¿Tienes un animal que necesita un hogar?\nRegistralo aquí',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 18.7973537445 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // cadastrarE9Q (474:268)
                              left: 17.8859863281 * fem,
                              top: 94.2780151367 * fem,
                              child: Container(
                                width: 78.33 * fem,
                                height: 29.62 * fem,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(8.3543796539 * fem),
                                  gradient: LinearGradient(
                                    begin: Alignment(0, -1),
                                    end: Alignment(0, 1),
                                    colors: <Color>[
                                      Color(0xfffdd153),
                                      Color(0xfff5c02d)
                                    ],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.registrar_animal);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.3543796539 * fem),
                                    ),
                                    minimumSize: Size(78.33 * fem, 29.62 * fem),
                                  ),
                                  child: Text(
                                    'Registrar',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12.5315694809 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // perfilSFU (474:271)
                      left: 314 * fem,
                      top: 40 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15 * fem),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/perfil-bg-U66.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // localizaoFcE (474:273)
                      left: 10 * fem,
                      top: 45 * fem,
                      child: Container(
                        width: 127.94 * fem,
                        height: 18 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // buttonshapem4n (474:274)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6.94 * fem, 1 * fem),
                              width: 14.59 * fem,
                              height: 14 * fem,
                              child: Image.asset(
                                'assets/page-1/images/button-shape-w8N.png',
                                width: 14.59 * fem,
                                height: 14 * fem,
                              ),
                            ),
                            Container(
                              // santacruzbo5bG (474:275)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 4.47 * fem, 0 * fem),
                              child: Text(
                                'Santa Cruz, BO',
                                style: SafeGoogleFont(
                                  'Outfit',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3846153846 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // vectorYjk (474:276)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2.48 * fem),
                              width: 13.94 * fem,
                              height: 6.52 * fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-sr2.png',
                                width: 13.94 * fem,
                                height: 6.52 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // notificationsn2 (554:698)
                      left: 279 * fem,
                      top: 43 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 23 * fem,
                          height: 23 * fem,
                          child: Image.asset(
                            'assets/page-1/images/notification-UpJ.png',
                            width: 23 * fem,
                            height: 23 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // barramenuntz (474:278)
              left: 0 * fem,
              top: 756 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    25 * fem, 5 * fem, 25 * fem, 8.99 * fem),
                width: 360 * fem,
                height: 44 * fem,
                decoration: BoxDecoration(
                  color: Color(0xfffcfcfc),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20 * fem),
                    topRight: Radius.circular(20 * fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, -4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // buttonshapeSCr (I474:278;55:168)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3.99 * fem, 48 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/page-1/images/button-shape-7Rc.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                    Container(
                      // buttonshape8bU (I474:278;52:165)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3.99 * fem, 39 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/page-1/images/button-shape-MAS.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                    Container(
                      // buttonshapeTNr (I474:278;59:276)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 50 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 30.01 * fem,
                      child: Image.asset(
                        'assets/page-1/images/button-shape-JKU.png',
                        width: 24 * fem,
                        height: 30.01 * fem,
                      ),
                    ),
                    Container(
                      // buttonshapexaW (I474:278;54:167)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3.99 * fem, 53 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/page-1/images/button-shape-1UW.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                    Container(
                      // buttonshape4tS (I474:278;52:166)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3.99 * fem, 0 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/page-1/images/button-shape-2NN.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
