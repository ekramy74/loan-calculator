import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _slidervalue = 12000;
  double _secondslidervalue = 24;
  double _thirdslidervalue = 760;
  double _totalEstCost = 0;
  double _estMonthlyPayment = 0;
  double _payment = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      resizeToAvoidBottomInset: true,
      body: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue[700], Colors.lightBlue[400]])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 20),
              child: Text(
                'Loan Calculator',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Container(
                height: height * .2,
                width: width * .8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        _payment.round().toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                      child: Text(
                        'Est. Monthly Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                            fontSize: 15),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Est. Interset Rate',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              fontSize: 13),
                        ),
                        Text(
                          '4.9%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              fontSize: 13),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Total Est. Cost of Loan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                                fontSize: 12),
                          ),
                          Text(
                            _totalEstCost.round().toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Loan Amount',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text(
                              'EGP\r',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              _slidervalue.round().toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  /*FlutterSlider(
                    values: [5],
                    min: 0,
                    max: 100,
                    handlerHeight: 30,
                    handler: FlutterSliderHandler(
                        decoration: BoxDecoration(
                            //image: DecorationImage(image: ),
                            gradient: LinearGradient(
                                colors: [Colors.red, Colors.orange]))),
                  ),*/
                  SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        trackShape: GradientRectSliderTrackShape(),
                        showValueIndicator: ShowValueIndicator.never),
                    child: Slider(
                      value: _slidervalue,
                      inactiveColor: Colors.grey[900],
                      label: _slidervalue.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          this._slidervalue = value;
                        });
                      },
                      min: 3000,
                      max: 30000,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          '- \r\r\r3000',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          '30000',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'interested in different amount?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Container(color: Colors.black),
              height: 50,
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Loan Term',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, right: 20),
                            child: Text(
                              '\r\r\r(Months)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        _secondslidervalue.round().toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.white,
                      activeTickMarkColor: Colors.transparent,
                      inactiveTickMarkColor: Colors.transparent,
                      trackShape: GradientRectSliderTrackShape(),
                    ),
                    child: Slider(
                      value: _secondslidervalue,
                      inactiveColor: Colors.grey[900],
                      onChanged: (value) {
                        setState(() {
                          this._secondslidervalue = value;
                        });
                      },
                      divisions: 4,
                      min: 12,
                      max: 60,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\r\r- 12',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '24',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '36',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '48',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          '60\r\r\r',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Container(color: Colors.black),
              height: 39,
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'FICO Credit Score ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.info_outline,
                                color: Colors.grey[700],
                                size: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        _thirdslidervalue.round().toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackShape: GradientRectSliderTrackShape(),
                    ),
                    child: Slider(
                      value: _thirdslidervalue,
                      inactiveColor: Colors.grey[900],
                      onChanged: (value) {
                        setState(() {
                          this._thirdslidervalue = value;
                        });
                      },
                      min: 579,
                      max: 801,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\r\r- \r\r<579',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '580',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '670',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '740',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          '800+',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _estMonthlyPayment =
                              _slidervalue * (4.9 / _secondslidervalue);
                          _payment = _estMonthlyPayment;
                          _totalEstCost = _secondslidervalue * _payment;
                        });
                      },
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                      child: Text(
                        'Start Your Application',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientRectSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  const GradientRectSliderTrackShape();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    @required RenderBox parentBox,
    @required SliderThemeData sliderTheme,
    @required Animation<double> enableAnimation,
    @required TextDirection textDirection,
    @required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    assert(context != null);
    assert(offset != null);
    assert(parentBox != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    assert(enableAnimation != null);
    assert(textDirection != null);
    assert(thumbCenter != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting  can be a no-op.
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight <= 0) {
      return;
    }
    LinearGradient gradient =
        LinearGradient(colors: <Color>[Colors.blue[700], Colors.cyan[400]]);

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..shader = gradient.createShader(trackRect)
      ..color = activeTrackColorTween.evaluate(enableAnimation);
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation);
    Paint leftTrackPaint;
    Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Radius trackRadius = Radius.circular(trackRect.height / 2);
    final Radius activeTrackRadius = Radius.circular(trackRect.height / 2 + 1);

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left,
        (textDirection == TextDirection.ltr)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        bottomLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
      ),
      leftTrackPaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
        bottomRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
      ),
      rightTrackPaint,
    );
  }
}
