import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/pages/common_design.dart';
import 'package:spotify_app/pages/sigh_up.dart';
import 'package:spotify_app/ui_helper/util.dart';

class ContinuePage extends StatefulWidget {
  const ContinuePage({super.key, required this.toggleTheme});
  final VoidCallback toggleTheme;

  @override
  State<ContinuePage> createState() => _ContinuePageState();
}

class _ContinuePageState extends State<ContinuePage> {
  @override
  Widget build(BuildContext context) {
    return CommonDesign(
      child: Column(
        children: [
          Container(
            width: 284.w,
            height: 185.h,
            margin: EdgeInsets.only(left: 97.w, top: 530.h),
            child: Column(
              children: [
                Text(
                  'Choose Mode',
                  style: mtextstyle1(),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.w),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              widget.toggleTheme();
                            },
                            child: const Image(
                              image: AssetImage('assets/images/grp1.png'),
                            ),
                          ),
                          Text(
                            'Dark Mode',
                            style: mtextstyle16(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            widget.toggleTheme();
                          },
                          child: const Image(
                            image: AssetImage('assets/images/grp2.png'),
                          ),
                        ),
                        Text(
                          'Light Mode',
                          style: mtextstyle16(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: 348.w,
            height: 72.h,
            margin: EdgeInsets.only(
              left: 40.w,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SighUp(),
                  ),
                );
              },
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromRGBO(18, 35, 18, 1),
                ),
              ),
              child: Text(
                'Continue',
                style: mtextstyle().copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
