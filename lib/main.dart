 import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: Test3()));




class Test3 extends StatefulWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override

  @override
  int select = 0;
  String value1 = 'التصنيف الرئيسي';
  String value2 = 'التصنيف الفرعي';
  String value3 = 'درجه الأهميه';

  bool isSelected = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter dropdowns'),),
      backgroundColor: Colors.white,
      body:  GetBuilder<AddViolationController>(
          init :AddViolationController(),
          builder:(controller) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120 ,
                ),
                Center(child: SizedBox(height: 100,child: Text('How to code dropdowns that depend on other dropdowns', style: TextStyle(fontWeight: FontWeight.bold),),)),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    decoration:   const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.black12,
                          Colors.black26
                          ],
                        )),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.end,
                      alignment: WrapAlignment.center,
                      children: [


                        Padding(
                          padding:
                          EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
                          child: Container(
                            width: 200,
                            padding: EdgeInsets.only(
                                top: 40, right: 30, left: 30, bottom: 0),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Container(
                                  height: 70,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 0.0, vertical: 15),


                                  child: DropdownButton<String>(
                                    hint: Text(value1),
                                    underline: SizedBox(),
                                    isExpanded: true,
                                    items: controller.mainCategories
                                        .map<DropdownMenuItem<String>>(
                                            (value) => DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value.toString()),
                                        ))
                                        .toList(),
                                    onChanged: (value) {
                                      setState(
                                            () {
                                          this.value1 = value.toString();
                                          isSelected = true;
                                        },
                                      );
                                    },
                                  ),
                                ),

                                const SizedBox(
                                  width: 22,
                                ),
                                isSelected == true
                                    ? Container(
                                  height: 70,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 0.0, vertical: 15),
                                  padding: EdgeInsets.all(0),
                                  // decoration: K.TextFieldboxDecoration,
                                  child: DropdownButton<String>(
                                    hint: Text(value2),
                                    underline: SizedBox(),
                                    isExpanded: true,
                                    items: value1 == controller.mainCategories[0]
                                        ? controller.index0
                                        .map<DropdownMenuItem<String>>((value) =>
                                        DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value.toString()),
                                        ))
                                        .toList()
                                        : value1 == controller.mainCategories[1]
                                        ? controller.index1
                                        .map<DropdownMenuItem<String>>((value) =>
                                        DropdownMenuItem<String>(
                                          value: value,
                                          child:
                                          Text(value.toString()),
                                        ))
                                        .toList()
                                        : value1 ==
                                        controller.mainCategories[2]
                                        ? controller.index2
                                        .map<DropdownMenuItem<String>>((value) =>
                                        DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                              value.toString()),
                                        ))
                                        .toList()
                                        : value1 ==
                                        controller
                                            .mainCategories[3]
                                        ? controller.index3
                                        .map<DropdownMenuItem<String>>(
                                            (value) =>
                                            DropdownMenuItem<
                                                String>(
                                              value: value,
                                              child: Text(value
                                                  .toString()),
                                            ))
                                        .toList()
                                        : value1 ==   controller   .mainCategories[4]
                                        ? controller.index4
                                        .map<DropdownMenuItem<String>>(
                                            (value) =>
                                            DropdownMenuItem<String>(
                                              value:
                                              value,
                                              child: Text(
                                                  value
                                                      .toString()),
                                            ))
                                        .toList()
                                        : value1 == controller.mainCategories[5]
                                        ? controller.index5
                                        .map<DropdownMenuItem<String>>((value) => DropdownMenuItem<String>(
                                      value: value, child: Text(value.toString()),)).toList() : controller.index6
                                        .map<DropdownMenuItem<String>>((value) => DropdownMenuItem<String>(
                                      value:
                                      value,
                                      child: Text(
                                          value
                                              .toString()),
                                    ))
                                        .toList(),
                                    onChanged: (value) {setState(() {this.value2 = value.toString();},);},),)
                                    : Container(
                                  height: 70,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 0.0 , vertical: 15
                                  ),
                                  // padding: K.fixedPadding,
                                  // decoration: K.TextFieldboxDecoration,
                                  child: DropdownButton(
                                    hint: Text(value2),
                                    underline: SizedBox(),
                                    isExpanded: true,
                                    items: items,
                                    onChanged: (String? value) {},),),
                                // LoginLabel(
                                //   text:  'درجه الأهميه',
                                //   widget: Image.asset(
                                //     "assets/images/edit.png", height: 20,
                                //     color: K.mainColor,
                                //   ),),
                                Container(
                                  height: 70,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15),
                                     child: DropdownButton(
                                      hint: Text(value3),
                                      underline: SizedBox(),
                                      isExpanded: true,
                                      items: controller.options.
                                      map((e) => DropdownMenuItem<String>(
                                        value: e, child: Text(e.toString()),)).toList(),
                                      onChanged: (value) {setState(() {this.value3 = value.toString();},);}),),
                                // LoginButton(
                                //   onTap: (){
                                //     Get.toNamed(AppRoutes.postScreen);
                                //   },
                                //   customWidth: true,
                                //   width: 200,
                                //   label: "  التالي ",
                                // ),
                              ],),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),


      ),
      ),
    );
  }
  List<DropdownMenuItem<String>> items = [];
}

class AddViolationController extends GetxController {
  List<dynamic> options = ["عاديه", " مهمه", " مهمه للغايه"];
  static double PIN_INVISIBLE_POSITION = -300;
  static double PIN_VISIBLE_POSITION = 20;
   double? pinPillPosition = PIN_INVISIBLE_POSITION;

  List<String> mainCategories = [
    'التشوهات البصرية',
    'مراقبة البناء',
    'المرافق البلدية',
    'الأسواق التجارية',
    'المواد الغذائية',
    'النظافة العامة',
    'غير مصنفة',
  ];
  List<String> index0 = [
    //التشوهات البصرية
    'المباني المهجورة ',
    'تناظرات والوان المباني',
    'الكتابة المشوهة للجدران والدهان',
    ' تغطية الشرفات',
    'الهناجر المخالفة فوق السطوح',
    'مجاري وتمديدات التكييف',
    'اطباق الأقمار الصناعية',
    'المظلات',
    'مداخن التهوية في المطاعم',
    'تكسيات الألومنيوم',
    'الاسوار',
    'تشجر الأرصفة وممرات المشاة',
    'الأرصفة المتهالكة',
    ' دهان البر ودرات',
    'حفر الشوارع',
    'نظافة الأماكن العامة',
    'عدم دهان الشوارع',
    'محولات الكهرباء في الشوارع',
    'تسرب المياه',
    'السيارات التالفة',
    'المطبات العشوائية',
    'وقوف السيارات الغير مصرح به',
    'اللوحات التجارية',
    'اللوحات الاعلانيه',
    'اللوحات الارشادية',
    'اللوحات التحذيريه',
    'أعمدة الانارة',
    'الاعمدة والاسلاك الكهربائية',
    'أعمدة الاتصالات',
    'مخالفات البناء',
    'المباني تحت الانشاء',
    'مشاريع الخدمات والحفريات',
    'الحواجز الخرسانية',
    'تسوير المباني تحت الانشاء',
    'نقل مواد البناء',
    'التشوين',
    'تسوير الأراضي البيضاء',
    ' الحدائق والملاعب المهجورة',
    'دورات المياه العامة',
    'الحاويات وتكدس النفايات',
    'الاحواض الزراعية',
    'الباعة الجائلين',
    'اثاث الشوارع',
  ];

  List<String> index1 = [
    //مراقبة البناء
    'بناء بدون ترخيص',
    'تعديات',
    'احداث جديد',
    'ترميم بدون ترخيص',
    'بلاغ',
    'اخرى',
  ];
  List<String> index2 = [
    //المرافق البلدية
    'مظلات سيارات',
    'مخالفات الشركات',
    ' تلفيات المرافق',
    'الحدائق',
    'اخرى',
  ];
  List<String> index3 = [
    //الأسواق التجارية
    'نشاط بدون ترخيص',
    'حظائر الماشية',
    'باعة جائلين',
    'الاستراحات',
    'اللوحات',
    'بلاغ',
    'عمليات الأمانة',
    'اخرى',
  ];
  List<String> index4 = [
    //المواد الغذائية
    'تطبيق ممتثل',
    'تطبيق مخالفة (بلدي)',
    'عدم وجود شهادة صحية',
    'محل بدون ترخيص',
    'بلاغ',
    'اخرى',
  ];
  List<String> index5 = [
    //النظافة العامة
    'السيارات التالفة',
    'الحاويات',
    'الاشجار',
    'بلاغ',
    'اخرى',
  ];
  List<String> index6 = [
    //غير مصنفة
    'بلاغ',
    'عمليات الأمانة',
    'هواتف طالبة',
    'شكوى',
    'توجيه ',
    'افادة',
    'الجهات المعنية',
    'لجان',
    'مشاركة',
    'اخرى',
  ];

  final check = false.obs;

  checkFun() {
    check.value = !check.value;
    isChecked(check);
    print(check.value);
    update();
  }

  isChecked(check) {
    try {
      if (check != null) {
        pinPillPosition =
        check != true ? PIN_INVISIBLE_POSITION : PIN_VISIBLE_POSITION;
        update();
      } else {
        print('error');
      }
    } catch (e) {
      throw Exception();
    }
  }


}
