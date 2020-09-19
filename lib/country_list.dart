import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

import 'country.dart';

class Country_list extends StatefulWidget {
  @override
  _Country_listState createState() => _Country_listState();
}

class _Country_listState extends State<Country_list> {
  List<Country> _countries = Country.getCountries();
  List<DropdownMenuItem<Country>> _dropdownMenuItems;
  Country _selectedCountry;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_countries);
    _selectedCountry = _dropdownMenuItems[0].value;
    print(_selectedCountry);
    super.initState();
  }
  List<DropdownMenuItem<Country>> buildDropdownMenuItems(List countries) {
    List<DropdownMenuItem<Country>> items = List();
    for (Country country in countries) {
      items.add(
        DropdownMenuItem(
          value: country,
          child: Container(
            width: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flag(country.code,
                width: 40,
                height: 25,
                ),
                Text(country.name,style: TextStyle(color:Colors.white,fontSize: 15.0),),
              ],
            ),
          ),
        ),
      );
    }
    return items;
  }
 
  onChangeDropdownItem(Country selectedCountry) {
    setState(() {
      _selectedCountry = selectedCountry;
    });
  }
 
  
  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(20)
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right:8.0),
                    child: DropdownButton(
                      dropdownColor: Colors.red[100],
                      iconEnabledColor: Colors.white,
                      value: _selectedCountry,
                      items: _dropdownMenuItems,
                      underline: Container(),
                      onChanged: onChangeDropdownItem,
                    ),
                  ),
                );
  }
}