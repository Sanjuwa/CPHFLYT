import 'package:cphflyt/constants.dart';
import 'package:cphflyt/widgets/button.dart';
import 'package:cphflyt/widgets/custom_text.dart';
import 'package:cphflyt/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(text: "User Management", fontSize: 22.sp, isBold: true,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.w),
          child: Column(
            children: [
              ToggleSwitch(
                initialLabelIndex: 0,
                activeFgColor: Colors.white,
                inactiveBgColor: Color(0xffE6E6E6),
                inactiveFgColor: Color(0xff747474),
                totalSwitches: 2,
                labels: ['Driver', 'Employee'],
                fontSize: 14.sp,
                icons: [Icons.directions_car_filled, Icons.person_pin, Icons.delete],
                activeBgColor: [kLightBlue],
                cornerRadius: 40.r,
                animate: true,
                animationDuration: 200,
                curve: Curves.easeIn,
                minWidth: 110.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Image.asset("assets/employee.png"),
              ),
              InputField(text: "Driver's Name", icon: Icons.person,),
              SizedBox(height: 15.h,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 2, color: Color(0xffE4DFDF))
                ),
                child: DropdownButton(
                    underline: SizedBox.shrink(),
                    isExpanded: true,
                    hint: Text("Which page need to access?"),
                    items: [
                      DropdownMenuItem(child: CustomText(text: "1st Page",align: TextAlign.center,),value: '1',),
                      DropdownMenuItem(child: CustomText(text: "2nd Page"),value: '2',),
                      DropdownMenuItem(child: CustomText(text: "3rd Page"),value: '3',),
                    ],
                    onChanged: (b){}
                ),
              ),
              SizedBox(height: 15.h,),
              InputField(text: "Email", icon: Icons.email,keyboard: TextInputType.emailAddress,),
              SizedBox(height: 15.h,),
              InputField(text: "Password", icon: Icons.lock,isPassword: true,),
              SizedBox(height: 15.h,),
              InputField(text: "Confirm Password", icon: Icons.lock, isPassword: true,),
              SizedBox(height: 50.h,),

              SizedBox(
                width: double.infinity,
                child: Button(
                    color: kLightBlue,
                    text: "Create Account",
                    onPressed: (){}
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
