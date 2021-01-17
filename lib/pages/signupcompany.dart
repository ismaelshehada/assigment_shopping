import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingUpCompany extends StatefulWidget {
  @override
  _SingUpCompanyState createState() => _SingUpCompanyState();
}

class _SingUpCompanyState extends State<SingUpCompany> {
  @override
  Widget build(BuildContext context) {
    //  bool company = true;
    //  bool name = false;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: SvgPicture.asset('image/image1.svg'),
              left: -60,
              top: -60,
            ),
            Positioned(
              child: SvgPicture.asset('image/image1.svg'),
              right: -60,
              bottom: -60,
            ),
            /* Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Proxima Nova',
                        fontSize: 17,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  company
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                'Enter your data',
                                style: TextStyle(
                                  fontFamily: 'Proxima Nova',
                                  fontSize: 13,
                                  color: const Color(0xff6c738a),
                                  letterSpacing: 0.039,
                                  height: 2.769230769230769,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        company = true;
                                        name = false;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          'Company',
                                          style: TextStyle(
                                            fontFamily: 'Proxima Nova',
                                            fontSize: 13,
                                            color: const Color(0xff6c738a),
                                            letterSpacing: 0.039,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          company = false;
                                          name = true;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            'Name',
                                            style: TextStyle(
                                              fontFamily: 'Proxima Nova',
                                              fontSize: 13,
                                              color: const Color(0xff6c738a),
                                              letterSpacing: 0.039,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 150),
                              color: Colors.yellowAccent,
                              height: "error" == '' ? 0 : 40,
                              width: MediaQuery.of(context).size.width,
                              child: "error" == ''
                                  ? SizedBox()
                                  : Stack(
                                      children: [
                                        Center(child: Text("error")),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            icon: Icon(Icons.clear),
                                            onPressed: () {
                                              //  setState(() {
                                              //   'error' = '';
                                              //  });
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              child: Form(
                                //  key: companyKey,
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                          /*  validator: (value) => FieldValidator.validate(
                                                value, context),
                                       controller: _userController,
                                        decoration: InputDecoration('Company name'),*/
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xffe2e2e2)),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  "genderCompany",
                                                  style: TextStyle(
                                                    fontFamily: 'Proxima Nova',
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0xff6c738a),
                                                    letterSpacing: 0.768,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15),
                                                child: SvgPicture.asset(
                                                    'assets/arrow-down-angle.svg'),
                                              ),
                                            ),
                                            DropdownButton<String>(
                                              isExpanded: true,
                                              underline: SizedBox(),
                                              elevation: 0,
                                              dropdownColor:
                                                  const Color(0xffe2e2e2),
                                              iconSize: 0,
                                              items: "gender"
                                                  .map((e) =>
                                                      DropdownMenuItem<String>(
                                                        child: Text(e),
                                                        value: e,
                                                      ))
                                                  .toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  genderCompany = value;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            FieldValidator.validate(
                                                value, context),
                                        decoration:
                                            inputdecoration('@Account name'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              FieldValidator.validate(
                                                  value, context),
                                          decoration: inputdecoration(
                                              'Instagram Account '),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            MobileValidator.validate(
                                                value, context),
                                        controller: _mobileController,
                                        decoration: inputdecoration('Mobile'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              EmailValidator.validate(
                                                  value, context),
                                          controller: _emailController,
                                          decoration: inputdecoration('Email'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        color: const Color(0xffffffff),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xffe2e2e2)),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                countryCompany,
                                                style: TextStyle(
                                                  fontFamily: 'Proxima Nova',
                                                  fontSize: 12,
                                                  color:
                                                      const Color(0xff6c738a),
                                                  letterSpacing: 0.768,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15),
                                              child: SvgPicture.asset(
                                                  'assets/arrow-down-angle.svg'),
                                            ),
                                          ),
                                          DropdownButton<String>(
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            elevation: 0,
                                            dropdownColor:
                                                const Color(0xffe2e2e2),
                                            iconSize: 0,
                                            items: country
                                                .map((e) =>
                                                    DropdownMenuItem<String>(
                                                      child: Text(e),
                                                      value: e,
                                                    ))
                                                .toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                countryCompany = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              FieldValidator.validate(
                                                  value, context),
                                          controller: _cityController,
                                          decoration: inputdecoration('City'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            FieldValidator.validate(
                                                value, context),
                                        controller: _passwordController,
                                        decoration: inputdecoration('Password'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              FieldValidator.validate(
                                                  value, context),
                                          controller: _confirmPassController,
                                          decoration: inputdecoration(
                                              'Confirm password'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, right: 35),
                                child: GestureDetector(
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      fontFamily: 'Proxima Nova',
                                      fontSize: 13,
                                      color: const Color(0x8f000000),
                                      decoration: TextDecoration.underline,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: GestureDetector(
                                  onTap: () => onPressed(),
                                  child: Container(
                                      child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/black_button.svg'),
                                      Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          fontFamily: 'Proxima Nova',
                                          fontSize: 14,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  )),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have account?',
                                  style: TextStyle(
                                    fontFamily: 'Proxima Nova',
                                    fontSize: 13,
                                    color: const Color(0x61000000),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignIn(),
                                        )),
                                    child: Text(
                                      'Log In',
                                      style: TextStyle(
                                        fontFamily: 'Proxima Nova',
                                        fontSize: 13,
                                        color: const Color(0xff000000),
                                        decoration: TextDecoration.underline,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                'Enter your data',
                                style: TextStyle(
                                  fontFamily: 'Proxima Nova',
                                  fontSize: 13,
                                  color: const Color(0xff6c738a),
                                  letterSpacing: 0.039,
                                  height: 2.769230769230769,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        company = true;
                                        name = false;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        RadioBtn(
                                          isSelected: company,
                                        ),
                                        Text(
                                          'Company',
                                          style: TextStyle(
                                            fontFamily: 'Proxima Nova',
                                            fontSize: 13,
                                            color: const Color(0xff6c738a),
                                            letterSpacing: 0.039,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          company = false;
                                          name = true;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          RadioBtn(
                                            isSelected: name,
                                          ),
                                          Text(
                                            'Name',
                                            style: TextStyle(
                                              fontFamily: 'Proxima Nova',
                                              fontSize: 13,
                                              color: const Color(0xff6c738a),
                                              letterSpacing: 0.039,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 150),
                              color: Colors.yellowAccent,
                              height: error == '' ? 0 : 40,
                              width: size.width,
                              child: error == ''
                                  ? SizedBox()
                                  : Stack(
                                      children: [
                                        Center(child: Text(error)),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            icon: Icon(Icons.clear),
                                            onPressed: () {
                                              setState(() {
                                                error = '';
                                              });
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              child: Form(
                                key: userKey,
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            FieldValidator.validate(
                                                value, context),
                                        decoration:
                                            inputdecoration('User Name'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xffe2e2e2)),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  genderUser,
                                                  style: TextStyle(
                                                    fontFamily: 'Proxima Nova',
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0xff6c738a),
                                                    letterSpacing: 0.768,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15),
                                                child: SvgPicture.asset(
                                                    'assets/arrow-down-angle.svg'),
                                              ),
                                            ),
                                            DropdownButton<String>(
                                              isExpanded: true,
                                              underline: SizedBox(),
                                              elevation: 0,
                                              dropdownColor:
                                                  const Color(0xffe2e2e2),
                                              iconSize: 0,
                                              items: gender
                                                  .map((e) =>
                                                      DropdownMenuItem<String>(
                                                        child: Text(e),
                                                        value: e,
                                                      ))
                                                  .toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  genderUser = value;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            FieldValidator.validate(
                                                value, context),
                                        decoration:
                                            inputdecoration('@Account name'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              FieldValidator.validate(
                                                  value, context),
                                          decoration: inputdecoration(
                                              'Instagram Account '),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            MobileValidator.validate(
                                                value, context),
                                        decoration: inputdecoration('Mobile'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              EmailValidator.validate(
                                                  value, context),
                                          decoration: inputdecoration('Email'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        color: const Color(0xffffffff),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xffe2e2e2)),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                countryUser,
                                                style: TextStyle(
                                                  fontFamily: 'Proxima Nova',
                                                  fontSize: 12,
                                                  color:
                                                      const Color(0xff6c738a),
                                                  letterSpacing: 0.768,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15),
                                              child: SvgPicture.asset(
                                                  'assets/arrow-down-angle.svg'),
                                            ),
                                          ),
                                          DropdownButton<String>(
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            elevation: 0,
                                            dropdownColor:
                                                const Color(0xffe2e2e2),
                                            iconSize: 0,
                                            items: country
                                                .map((e) =>
                                                    DropdownMenuItem<String>(
                                                      child: Text(e),
                                                      value: e,
                                                    ))
                                                .toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                countryUser = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              FieldValidator.validate(
                                                  value, context),
                                          controller: _cityController,
                                          decoration: inputdecoration('City'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      height: 40,
                                      child: TextFormField(
                                        validator: (value) =>
                                            FieldValidator.validate(
                                                value, context),
                                        decoration: inputdecoration('Password'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        height: 40,
                                        child: TextFormField(
                                          validator: (value) =>
                                              FieldValidator.validate(
                                                  value, context),
                                          decoration: Inputdecoration(
                                              'Confirm password'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, right: 35),
                                child: GestureDetector(
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      fontFamily: 'Proxima Nova',
                                      fontSize: 13,
                                      color: const Color(0x8f000000),
                                      decoration: TextDecoration.underline,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: GestureDetector(
                                  onTap: () => onPressed(),
                                  child: Container(
                                      child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/black_button.svg'),
                                      Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          fontFamily: 'Proxima Nova',
                                          fontSize: 14,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  )),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have account?',
                                  style: TextStyle(
                                    fontFamily: 'Proxima Nova',
                                    fontSize: 13,
                                    color: const Color(0x61000000),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignIn(),
                                        )),
                                    child: Text(
                                      'Log In',
                                      style: TextStyle(
                                        fontFamily: 'Proxima Nova',
                                        fontSize: 13,
                                        color: const Color(0xff000000),
                                        decoration: TextDecoration.underline,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 35),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          )),
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                          fontFamily: 'Proxima Nova',
                          fontSize: 13,
                          color: const Color(0xff000000),
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
