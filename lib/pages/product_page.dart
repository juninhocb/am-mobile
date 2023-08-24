import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);


  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _isService = false;
  List<String> providers = <String>['John Green', 'Beth Services', 'Steven Programmer', 'Anne Bath'];
  List<String> categories = <String>['Feed', 'Manufacture', 'Hobbie', 'Software'];
  List<String> units = <String>['KG', 'Unidade', 'Litros', 'Pacote'];
  String selectedProvider = '';
  String selectedCategory = '';
  String selectedUnit = '';

  @override
  void initState(){
    super.initState();
    selectedProvider = providers.first;
    selectedCategory = categories.first;
    selectedUnit = units.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: AppColors.mainColor,
      body: _buildBody(),
    );
  }
  
  Widget _buildBody() {
    return _isService ?
    _formService() : _formProduct();
  }

  Widget _formService() {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      margin: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(10.0)
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Services", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.white
          ),),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                  decoration:  const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(104, 108, 120, 1),
                          )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(104, 108, 120, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                      )),
                  style: const TextStyle(
                      color: Color.fromRGBO(104, 108, 120, 1)
                  ),
                  keyboardType: TextInputType.name,),
                TextFormField(
                  cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                  decoration:  const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(104, 108, 120, 1),
                          )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      labelText: "Description",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(104, 108, 120, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                      )),
                  style: const TextStyle(
                      color: Color.fromRGBO(104, 108, 120, 1)
                  ),
                  keyboardType: TextInputType.name,),
                TextFormField(
                  cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                  decoration:  const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(104, 108, 120, 1),
                          )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      labelText: "Price \$",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(104, 108, 120, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                      )),
                  style: const TextStyle(
                      color: Color.fromRGBO(104, 108, 120, 1)
                  ),
                  keyboardType: TextInputType.number,),
                const SizedBox(height: 15.0,),
                Text("Provider", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: AppColors.mainColor
                ),),
                Row(children: [
                  DropdownButton<String>(
                    dropdownColor: AppColors.secondaryColor,
                    underline: Container(
                      height: 2,
                      color: AppColors.mainColor,
                    ),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    value: selectedProvider,
                    onChanged: (String? value) {
                      setState(() {
                        selectedProvider = value!;
                      });
                    },
                    items: providers.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value), // You can customize the child widget here
                      );
                    }).toList(),
                  ),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: (() => {
                      Get.defaultDialog(
                        titleStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                        ),
                        titlePadding: const EdgeInsets.only(top: 15.0),
                        title: "Add Provider",
                        backgroundColor: AppColors.secondaryColor,
                        confirm: ElevatedButton(
                          onPressed: (() => {
                            Get.back()
                          }),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                          ),
                          child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        cancel: ElevatedButton(
                          onPressed: (() => {
                            Get.back()
                          }),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                          ),
                          child: const Text("Cancel", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        content: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                                  decoration:  const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(104, 108, 120, 1),
                                          )),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.green,
                                        ),
                                      ),
                                      labelText: "Name",
                                      labelStyle: TextStyle(
                                          color: Color.fromRGBO(104, 108, 120, 1),
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold
                                      )),
                                  style: const TextStyle(
                                      color: Color.fromRGBO(104, 108, 120, 1)
                                  ),
                                  keyboardType: TextInputType.name,)

                              ],
                            ),
                          ),
                        )
                      )
                    }),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                    ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  )
                ],),
                const SizedBox(height: 50.0,),
                ElevatedButton(
                  onPressed: (() => {

                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                  ),
                  child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),
          )

        ],
      ),
    );
  }

  Widget _formProduct(){
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      margin: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10.0)
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Products", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white
          ),),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                  decoration:  const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(104, 108, 120, 1),
                          )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(104, 108, 120, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                      )),
                  style: const TextStyle(
                      color: Color.fromRGBO(104, 108, 120, 1)
                  ),
                  keyboardType: TextInputType.name,),
                TextFormField(
                  cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                  decoration:  const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(104, 108, 120, 1),
                          )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      labelText: "Price \$",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(104, 108, 120, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                      )),
                  style: const TextStyle(
                      color: Color.fromRGBO(104, 108, 120, 1)
                  ),
                  keyboardType: TextInputType.number,),
                const SizedBox(height: 12.0,),
                Text("Provider", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: AppColors.mainColor
                ),),
                Row(children: [
                  DropdownButton<String>(
                    dropdownColor: AppColors.secondaryColor,
                    underline: Container(
                      height: 2,
                      color: AppColors.mainColor,
                    ),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    value: selectedProvider,
                    onChanged: (String? value) {
                      setState(() {
                        selectedProvider = value!;
                      });
                    },
                    items: providers.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value), // You can customize the child widget here
                      );
                    }).toList(),
                  ),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: (() => {
                      Get.defaultDialog(
                          titleStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),
                          titlePadding: const EdgeInsets.only(top: 15.0),
                          title: "Add Provider",
                          backgroundColor: AppColors.secondaryColor,
                          confirm: ElevatedButton(
                            onPressed: (() => {
                              Get.back()
                            }),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                            ),
                            child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          cancel: ElevatedButton(
                            onPressed: (() => {
                              Get.back()
                            }),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                            ),
                            child: const Text("Cancel", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          content: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                                    decoration:  const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(104, 108, 120, 1),
                                            )),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                          ),
                                        ),
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                            color: Color.fromRGBO(104, 108, 120, 1),
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold
                                        )),
                                    style: const TextStyle(
                                        color: Color.fromRGBO(104, 108, 120, 1)
                                    ),
                                    keyboardType: TextInputType.name,)

                                ],
                              ),
                            ),
                          )
                      )
                    }),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                    ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  )
                ],),
                Text("Category", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: AppColors.mainColor
                ),),
                Row(children: [
                  DropdownButton<String>(
                    dropdownColor: AppColors.secondaryColor,
                    underline: Container(
                      height: 2,
                      color: AppColors.mainColor,
                    ),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    value: selectedCategory,
                    onChanged: (String? value) {
                      setState(() {
                        selectedCategory = value!;
                      });
                    },
                    items: categories.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value), // You can customize the child widget here
                      );
                    }).toList(),
                  ),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: (() => {
                      Get.defaultDialog(
                          titleStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),
                          titlePadding: const EdgeInsets.only(top: 15.0),
                          title: "Add Category",
                          backgroundColor: AppColors.secondaryColor,
                          confirm: ElevatedButton(
                            onPressed: (() => {
                              Get.back()
                            }),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                            ),
                            child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          cancel: ElevatedButton(
                            onPressed: (() => {
                              Get.back()
                            }),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                            ),
                            child: const Text("Cancel", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          content: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                                    decoration:  const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(104, 108, 120, 1),
                                            )),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                          ),
                                        ),
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                            color: Color.fromRGBO(104, 108, 120, 1),
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold
                                        )),
                                    style: const TextStyle(
                                        color: Color.fromRGBO(104, 108, 120, 1)
                                    ),
                                    keyboardType: TextInputType.name,)

                                ],
                              ),
                            ),
                          )
                      )
                    }),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                    ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  )
                ],),
                Text("Unit", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: AppColors.mainColor
                ),),
                Row(children: [
                  DropdownButton<String>(
                    dropdownColor: AppColors.secondaryColor,
                    underline: Container(
                      height: 2,
                      color: AppColors.mainColor,
                    ),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    value: selectedUnit,
                    onChanged: (String? value) {
                      setState(() {
                        selectedUnit = value!;
                      });
                    },
                    items: units.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value), // You can customize the child widget here
                      );
                    }).toList(),
                  ),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: (() => {
                      Get.defaultDialog(
                          titleStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),
                          titlePadding: const EdgeInsets.only(top: 15.0),
                          title: "Add Unit",
                          backgroundColor: AppColors.secondaryColor,
                          confirm: ElevatedButton(
                            onPressed: (() => {
                              Get.back()
                            }),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                            ),
                            child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          cancel: ElevatedButton(
                            onPressed: (() => {
                              Get.back()
                            }),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                            ),
                            child: const Text("Cancel", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          content: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    cursorColor: const Color.fromRGBO(104, 108, 120, 1),
                                    decoration:  const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(104, 108, 120, 1),
                                            )),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                          ),
                                        ),
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                            color: Color.fromRGBO(104, 108, 120, 1),
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold
                                        )),
                                    style: const TextStyle(
                                        color: Color.fromRGBO(104, 108, 120, 1)
                                    ),
                                    keyboardType: TextInputType.name,)

                                ],
                              ),
                            ),
                          )
                      )
                    }),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                    ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  )
                ],),
                ElevatedButton(
                  onPressed: (() => {

                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.greenColor),
                  ),
                  child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),
          )

        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.secondaryColor,
      foregroundColor: Colors.white,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.secondaryColor)),
                  onPressed: () => {
                        setState(() => {_isService = false})
                      },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.production_quantity_limits,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Products",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.secondaryColor)),
                  onPressed: () => {
                        setState(() => {_isService = true})
                      },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home_repair_service_sharp,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Services",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

