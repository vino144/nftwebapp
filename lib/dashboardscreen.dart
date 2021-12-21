import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nftwebapp/models/UIModel.dart';
import 'package:nftwebapp/restplugin.dart';
import 'package:nftwebapp/tokenmodel.dart';

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  TextEditingController nft1Controller=new TextEditingController();
  TextEditingController nft2Controller=new TextEditingController();

  List<UIModel> collist1 = [];
  List<UIModel> collist2 = [];

  String _selectedText1 = "Please select the collection";
  String _selectedText2 = "Please select the collection";
  String col1_address='',col2_address='';
  List<TokenModel> tokenlist=[];
  String errorText1='';
  String errorText2='';



  @override
  void initState() {
    super.initState();
    UIModel model=UIModel(_selectedText1,_selectedText1);
    collist1.add(model);
    collist2.add(model);
    getcollections();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                child: Row(
                  children:[
                    Container(child: Image.asset( 'images/Indiumsoftwarelogo.png',height: 150,width: 300,),),
                    Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                    ),
                    child: Text("NFT Compare",
                      style: TextStyle(fontSize: 30,color: Colors.white, ),),
                  ),
    ]
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(
                    child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                          child: Row(
                              children:[
                                Container(child: Icon(Icons.dashboard_rounded,color: Colors.white,),),
                                VerticalDivider(width: 10,),
                                Container(
                                  child: Text('Select the Collection',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                )
                              ]),),
                        Center(
                        child: DropdownButton<String>(
                          dropdownColor: Colors.green,
                          focusColor: Colors.white,
                          iconEnabledColor: Colors.white,
                          value: _selectedText1,
                          items: collist1.map((UIModel colmodel) {
                            return DropdownMenuItem<String>(
                              value: colmodel.str_address,
                              child: Text(colmodel.str_col_name),
                            );
                          }).toList(),
                          onChanged: (value) {
                            //print(value);
                              setState(() {
                                _selectedText1 = value!;
                              });
                          },
                        )
                      ),
    ]
                    ),),
                    flex: 3,
                  ),
                  Flexible(child: Container(),flex: 1,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                              child: Row(
                                  children:[
                                    Container(child: Icon(Icons.dashboard_rounded,color: Colors.white,),),
                                    VerticalDivider(width: 10,),
                                    Container(
                                      child: Text('Select the Collection',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    )
                                  ]),),
                            Center(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.green,
                                  focusColor: Colors.white,
                                  iconEnabledColor: Colors.white,
                                  value: _selectedText2,
                                  items: collist2.map((UIModel colmodel) {
                                    return DropdownMenuItem<String>(
                                      value: colmodel.str_address,
                                      child: Text(colmodel.str_col_name),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    //print(value);
                                    setState(() {
                                      _selectedText2 = value!;
                                    });
                                  },
                                )
                            ),
                          ]
                      ),),
                    flex: 3,
                  ),

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Container(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.tab_rounded,color: Colors.white,size: 15,),),
                              VerticalDivider(width: 10,color: Colors.green,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.all(5),
                                child: Text('Enter NFT Token Name',
                                  style: TextStyle(fontSize: 12,color: Colors.white),
                                ),
                              ),
                            ]
                          ),
                            ),
                          Divider(height: 10,color: Colors.white,),
                          TextField(
                            controller: nft1Controller,
                              decoration: InputDecoration(
                                  hintText: "NFT Token",
                                  hintStyle: TextStyle(color: HexColor('#9096A0')),
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:Colors.green),
                                  ),
                                  labelStyle: new TextStyle(color: Colors.amber),
                                  prefixIcon:Icon(
                                    Icons.tab_rounded,
                                    color: Colors.green,
                                  ),
                                errorText:errorText1.length>0?errorText1:null,
                              ),
                              onSubmitted: (value){
                                //checklogin();
                              },
                              inputFormatters: [FilteringTextInputFormatter.deny(' ')]
                          )]
                      ),
                      ),
                  flex: 3,),
                  Expanded(child:  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                    ),
                    child: Center(
                    child:   ElevatedButton(
                      onPressed: () async {
                        comparenft();
                      },
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("COMPARE",style: TextStyle(fontSize: 22,color: Colors.white),)),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                        ),
                        backgroundColor:MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                  ),),flex: 1,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Container(

                              child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(Icons.tab_rounded,color: Colors.white,size: 15,),),
                                    VerticalDivider(width: 10,color: Colors.white,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3)],
                                      ),
                                      child: Text('Enter NFT Token Name',
                                        style: TextStyle(fontSize: 12,color: Colors.white),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Divider(height: 10,color: Colors.white,),
                            TextField(
                                controller: nft2Controller,
                                decoration: InputDecoration(
                                    hintText: "NFT Token",
                                    hintStyle: TextStyle(color: HexColor('#9096A0')),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.green),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:Colors.green),
                                    ),
                                    labelStyle: new TextStyle(color: Colors.amber),
                                    prefixIcon:Icon(
                                      Icons.tab_rounded,
                                      color: Colors.green,
                                    ),
                                  errorText: errorText2.length>0?errorText2:null,
                                ),
                                onSubmitted: (value){
                                  //checklogin();
                                },
                                inputFormatters: [FilteringTextInputFormatter.deny(' ')]
                            )]
                      ),
                    ),
                    flex: 3,),

                ],
              ),
              tokenlist.length>0?Container(child: Text("HEKSc"),):Container(child: Text('fffff'),),
              tokenlist.length>0? Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                    ),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[0].name),
                            ),
                            Divider(height: 10,),
                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[0].payment_symbol),
                            ),
                            Divider(height: 10,),
                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[0].payment_symbol),
                            ),
                            Divider(height: 10,),

                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[0].payment_symbol),
                            ),
                            Divider(height: 10,),
                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[0].payment_symbol),
                            ),
                            Divider(height: 10,),

                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[0].payment_symbol),
                            ),
                            Divider(height: 10,),
                      ],
                    )),
                  ),
                  tokenlist.length>1?Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                    ),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[1].name),
                            ),
                            Divider(height: 10,),
                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[1].payment_symbol),
                            ),
                            Divider(height: 10,),

                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[1].image_url),
                            ),
                            Divider(height: 10,),

                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[1].payment_usd_price.toString()),
                            ),
                            Divider(height: 10,),

                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[1].payment_eth_price.toString()),
                            ),
                            Divider(height: 10,),

                            Container(
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.green, blurRadius: 5)],
                              ),
                              child: Text(tokenlist[1].avg_price.toString()),
                            ),
                            Divider(height: 10,),


                          ],
                        )),
                  ):Container(),
                ],
              ):Container(),
            ],
          ),
        )
    );
  }

  void getcollections() async{
    restplugin rest=restplugin();
    String response=await rest.getcollections();
    if(response.isNotEmpty){
      final responsebody = jsonDecode(response);

      final col_response=responsebody['collections'];
      //print('response: '+col_response.toString());

      //Collections collections=Collections.fromJsonMap(responsebody);

      //print(collections);
      for(int i=0;i<col_response.length;i++){
        //print(col_response[2]);
        final col_name=col_response[i]['name'] as String;
        if(col_response[i]['payout_address']!=null) {
            final payout_address = col_response[i]['payout_address'] as String;
            if(payout_address.length>0) {
              setState(() {
                UIModel model=UIModel(payout_address,col_name);
                collist1.add(model);
                collist2.add(model);
              });
            }else{
              Fluttertoast.showToast(
                  msg: "This is Toast message",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
              );
            }
        }
      }
      //print(myList);
    }
  }

  comparenft() async {
    if(_selectedText1!='Please select the collection') {
      if(_selectedText2!='Please select the collection') {
        if (nft1Controller.text != null) {
          if (nft1Controller.text.length > 0) {
            if (nft2Controller.text != null) {
              if (nft2Controller.text.length > 0) {
                restplugin response = restplugin();
                String res1 = await response.getsinglesset(
                    _selectedText1, nft1Controller.text);
                print(res1);
                if (res1 != "failure") {
                  final resbody1 = jsonDecode(res1);

                  String name = resbody1['name'];
                  int num_sales = resbody1['num_sales'];
                  String image_url = resbody1['image_url'];
                  print(name);
                  print(num_sales);
                  print(image_url);

                  String payment_symbol = '';
                  double payment_eth_price = 0;
                  double payment_usd_price = 0;
                  final paycollection = resbody1['collection'];
                  final pay_tokens = paycollection['payment_tokens'];
                  for (int i = 0; i < pay_tokens.length; i++) {
                    if (pay_tokens[i]['symbol'] == 'ETH') {
                      payment_symbol = pay_tokens[i]['symbol'];
                      payment_eth_price = pay_tokens[i]['eth_price'];
                      payment_usd_price = pay_tokens[i]['usd_price'];
                    }
                  }

                  final statscol = paycollection['stats'];

                  double total_sales = 0;
                  double total_supply = 0;
                  double count = 0;
                  double num_owners = 0;
                  double avg_price = 0;
                  String createdDate = '';
                  if (statscol['total_sales'] != null) {
                    total_sales = statscol['total_sales'];
                  }
                  if (statscol['total_supply'] != null) {
                    total_supply = statscol['total_supply'];
                  }
                  if (statscol['count'] != null) {
                    count = statscol['count'];
                  }
                  if (statscol['num_owners'] != null) {
                    num_owners = statscol['num_owners'];
                  }
                  if (statscol['average_price'] != null) {
                    avg_price = statscol['average_price'];
                  }
                  if (paycollection['created_date'] != null) {
                    createdDate = paycollection['created_date'];
                  }

                  TokenModel token1 = TokenModel(
                      name,
                      num_sales,
                      image_url,
                      payment_symbol,
                      payment_eth_price,
                      payment_usd_price,
                      total_sales,
                      total_supply,
                      count,
                      num_owners,
                      avg_price,
                      createdDate);
                  setState(() {
                    tokenlist.add(token1);
                  });
                } else {
                  setState(() {
                    errorText1 = 'Please enter valid token';
                  });

                }

                String res2 = await response.getsinglesset(
                    _selectedText2, nft2Controller.text);
                print(res2);
                if (res2 == 'failure') {
                  final resbody2 = jsonDecode(res2);

                  String name2 = resbody2['name'];
                  int num_sales2 = resbody2['num_sales'];
                  String image_url2 = resbody2['image_url'];
                  print(name2);
                  print(num_sales2);
                  print(image_url2);

                  String payment_symbol2 = '';
                  double payment_eth_price2 = 0;
                  double payment_usd_price2 = 0;
                  final paycollection2 = resbody2['collection'];
                  final pay_tokens2 = paycollection2['payment_tokens'];
                  for (int i = 0; i < pay_tokens2.length; i++) {
                    if (pay_tokens2[i]['symbol'] == 'ETH') {
                      payment_symbol2 = pay_tokens2[i]['symbol'];
                      payment_eth_price2 = pay_tokens2[i]['eth_price'];
                      payment_usd_price2 = pay_tokens2[i]['usd_price'];
                    }
                  }

                  final statscol2 = paycollection2['stats'];

                  double total_sales2 = 0;
                  double total_supply2 = 0;
                  double count2 = 0;
                  double num_owners2 = 0;
                  double avg_price2 = 0;
                  String createdDate2 = '';
                  if (statscol2['total_sales'] != null) {
                    total_sales2 = statscol2['total_sales'];
                  }
                  if (statscol2['total_supply'] != null) {
                    total_supply2 = statscol2['total_supply'];
                  }
                  if (statscol2['count'] != null) {
                    count2 = statscol2['count'];
                  }
                  if (statscol2['num_owners'] != null) {
                    num_owners2 = statscol2['num_owners'];
                  }
                  if (statscol2['average_price'] != null) {
                    avg_price2 = statscol2['average_price'];
                  }
                  if (paycollection2['created_date'] != null) {
                    createdDate2 = paycollection2['created_date'];
                  }

                  TokenModel token2 = TokenModel(
                      name2,
                      num_sales2,
                      image_url2,
                      payment_symbol2,
                      payment_eth_price2,
                      payment_usd_price2,
                      total_sales2,
                      total_supply2,
                      count2,
                      num_owners2,
                      avg_price2,
                      createdDate2);
                  setState(() {
                    tokenlist.add(token2);
                  });
                } else {
                  setState(() {
                    errorText2 = 'Please enter valid token';
                  });

                }
              }
            }
          }
        }
      }else{
         Fluttertoast.showToast(
                msg: "Please select nft collection",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
              );
      }
    }else{
       Fluttertoast.showToast(
                msg: "Please select nft collection",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
              );
    }
  }
  
}

