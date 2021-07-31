import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp
      ]
    );
    final heightApp = Get.height - context.mediaQueryPadding.top - context.mediaQueryPadding.bottom;
    final widthApp = Get.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: widthApp,
                child: Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Obx(
                        () => Text("${controller.text}", style: GoogleFonts.dosis(
                          color: context.theme.hoverColor,
                          fontSize: 36
                        )),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Obx(
                        () => Text("${controller.hasil}", style: GoogleFonts.dosis(
                          color: context.theme.hoverColor,
                          fontSize: 24
                        )),
                      ),SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: widthApp,
              height: heightApp * 0.6,
              // height: 384,
              child: Padding(
                padding: EdgeInsets.only(right: 31, left: 31),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemButtonCustom(
                          text: "^",
                          value: "^",
                          textsize: 20,
                        ),
                        ACButton(
                          text: "C",
                          value: "Clear",
                        ),
                        ACButton(
                          text: "AC",
                          value: "AllClear",
                        ),
                        DeleteButton(
                          text: "⌫",
                          value: "Clear",
                        )       
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemButtonCustom(
                          text: "(",
                          value: "(",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: ")",
                          value: ")",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "%",
                          value: "%",
                          textsize: 20,
                        ),
                        ButtonMaterial(
                          text: "÷",
                          value: "/",
                        ),                       
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemButtonCustom(
                          text: "7",
                          value: "7",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "8",
                          value: "8",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "9",
                          value: "9",
                          textsize: 20,
                        ),
                        ButtonMaterial(
                          text: "×",
                          value: "*",
                        ),                       
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemButtonCustom(
                          text: "4",
                          value: "4",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "5",
                          value: "5",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "6",
                          value: "6",
                          textsize: 20,
                        ),
                        ButtonMaterial(
                          text: "-",
                          value: "-",
                        ),                       
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemButtonCustom(
                          text: "1",
                          value: "1",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "2",
                          value: "2",
                          textsize: 20,
                        ),
                        ItemButtonCustom(
                          text: "3",
                          value: "3",
                          textsize: 20,
                        ),
                        ButtonMaterial(
                          text: "+",
                          value: "+",
                        ),                      
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonItem(
                          text: "0",
                          value: "0",
                        ),
                        ItemButtonCustom(
                          text: ".",
                          value: ".",
                          textsize: 20,
                        ),
                        Buttonresult(
                          text: "=",
                        )                  
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class DeleteButton extends GetView<HomeController> {
  const DeleteButton({
    Key? key,
    required this.text,
    required this.value
  }) : super(key: key);
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(360),
      color: context.theme.primaryColor,
      child: InkWell(
        onTap:  () {
          controller.changeText(value);
        },
        child: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(360),
            
          //   // color: fillcolor !=null ? MyThemes.LightTheme.primaryColor : MyThemes.darkTheme.primaryColor, 
          // ),
          width: 46,
          height: 46,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.mcLaren(
                fontSize: 20,
                color: context.theme.hintColor
              ),),
          ),
        ),
      ),
    );
  }
}

class ButtonMaterial extends GetView<HomeController> {
  const ButtonMaterial({
    Key? key,
    required this.text,
    required this.value
  }) : super(key: key);
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(360),
      color: context.theme.cardColor,
      child: InkWell(
        onTap:  () {
          controller.changeText(value);
        },
        child: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(360),
            
          //   // color: fillcolor !=null ? MyThemes.LightTheme.primaryColor : MyThemes.darkTheme.primaryColor, 
          // ),
          width: 46,
          height: 46,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.mcLaren(
                fontSize: 20,
                color: context.theme.bottomAppBarColor
              ),),
          ),
        ),
      ),
    );
  }
}

class Buttonresult extends GetView<HomeController> {
  const Buttonresult({
    Key? key,
    required this.text,
    // required this.value
  }) : super(key: key);
  final String text;
  // final String value;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(360),
      color: context.theme.canvasColor,
      child: InkWell(
        onTap:  () => controller.eksekusi(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(360),
            // color: fillcolor !=null ? MyThemes.LightTheme.primaryColor : MyThemes.darkTheme.primaryColor, 
          ),
          width: 46,
          height: 46,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.mcLaren(
                fontSize: 20,
                color: context.theme.bottomAppBarColor
              ),),
          ),
        ),
      ),
    );
  }
}

class ACButton extends GetView<HomeController> {
  const ACButton({
    Key? key,
    required this.text,
    required this.value
  }) : super(key: key);
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Material(
       elevation: 10,
       borderRadius: BorderRadius.circular(360),
       color: context.theme.buttonColor,
       child: InkWell(
         onTap:  () {
           controller.changeText(value);
         },
         child: Container(
          //  decoration: BoxDecoration(
          //    borderRadius: BorderRadius.circular(360),
             
          //  ),
           width: 46,
           height: 46,
           child: Center(
             child: Text(
               text,
               style: GoogleFonts.mcLaren(
                 fontSize: 20,
                 color: context.theme.accentColor
               )),
           ),
         ),
       ),
     );
  }
}

class ButtonItem extends GetView<HomeController> {
  const ButtonItem({
    Key? key,
    required this.text,
    required this.value
  }) : super(key: key);
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Material(
       elevation: 10,
       borderRadius: BorderRadius.circular(8),
       color: context.theme.primaryColor,
       child: InkWell(
         onTap:  () {
           controller.changeText(value);
         },
         child: Container(
          //  decoration: BoxDecoration(
          //    borderRadius: BorderRadius.circular(8), 
             
          //  ),
           width: 130,
           height: 37,
           child: Center(
             child: Text(
               text,
               style: GoogleFonts.mcLaren(
                 fontSize: 20,
                 color: context.theme.bottomAppBarColor
               )),
           ),
         ),
       ),
     );
  }
}

class ItemButtonCustom extends GetView<HomeController> {
  const ItemButtonCustom({
    Key? key,
    required this.text,
    required this.textsize,
    required this.value
    // required this.fillcolor
  }) : super(key: key);
  final String text;
  final double textsize;
  final String value;
  // final int fillcolor;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(360),
      color: context.theme.primaryColor,
      child: InkWell(
        onTap:  () {
          controller.changeText(value);
        },
        child: Container(
          
          width: 46,
          height: 46,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.mcLaren(
                fontSize: textsize,
                color: context.theme.bottomAppBarColor
              ),),
          ),
        ),
      ),
    );
  }
}
