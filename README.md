# food_app

Online Food Ordering App - Flutter UI - Speed Code The Flutter Way
https://www.youtube.com/watch?v=F0ujC60wHwc&t=1378s

YouTube Channel: The Flutter Way

Progress
8/13/20 0:46 - Setup and creating the application Ended with making a constant file.
8/14/20 6:18 - Started working on the body of the program.
8/16/20 15:50 - We will continue with the body of the program we have the top half finished. 
8/17/20 19:26 - We are ready to build the details screen. We have finished the home page. 
8/18/20 26:05 - We have built half of the details screen. We should finish the detail screen in the future.  PricerCliper is throwing an error. We will need to fix that next. 
8/20/20 31:36 - We are almost done.
8/21/20 Done. I could troubleshoot an error message if I want to Incorrect use of ParentDataWidget. If you get this error message, remove the expanded widget. 


Things that I learned.
    1. In the Theme.of(Context).textTheme, we have a few deprecated members.Here is a list:
		headline1: headline1 ?? display4 ?? this.headline1,
    		headline2: headline2 ?? display3 ?? this.headline2,
    		headline3: headline3 ?? display2 ?? this.headline3,
    		headline4: headline4 ?? display1 ?? this.headline4,
    		headline5: headline5 ?? headline ?? this.headline5,
    		headline6: headline6 ?? title ?? this.headline6,
    		subtitle1: subtitle1 ?? subhead ?? this.subtitle1,
    		subtitle2: subtitle2 ?? subtitle ?? this.subtitle2,
    		bodyText1: bodyText1 ?? body2 ?? this.bodyText1,
    		bodyText2: bodyText2 ?? body1 ?? this.bodyText2,
    		caption: caption ?? this.caption,
    		button: button ?? this.button,
    		overline: overline ?? this.overline,
	
	2. I am adding a way to capture things that I would need to look up. I have a new folder called App Shortcuts. 

	3. Error Message: command phasescriptexecution failed with a nonzero exit code flutter
		We did a flutter upgrade and it broke something. We tried the pod init and install. 

		We went through a lot of troubleshooting. We found that upgrading the flutter_svg to last version fixed the issue. 
		
		Here is somethings that we tried and error logs. 
		Used for diagnostics
		> cd ios
		> xcrun xcodebuild -configuration Debug -showBuildSettings -workspace Runner.xcworkspace -scheme Runner

		Error Messages in flutter run
Xcode's output:
↳
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:88:26: Error: Type 'DiagnosticableMixin' not found.
    class PictureStream with DiagnosticableMixin {
                             ^^^^^^^^^^^^^^^^^^^
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:192:44: Error: Type 'DiagnosticableMixin' not found.
    abstract class PictureStreamCompleter with DiagnosticableMixin {
                                               ^^^^^^^^^^^^^^^^^^^
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:88:7: Error: The type 'DiagnosticableMixin' can't be mixed
    in.
    class PictureStream with DiagnosticableMixin {
          ^
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:192:16: Error: The type 'DiagnosticableMixin' can't be mixed
    in.
    abstract class PictureStreamCompleter with DiagnosticableMixin {
                   ^
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:167:11: Error: Superclass has no method named
    'debugFillProperties'.
        super.debugFillProperties(properties);
              ^^^^^^^^^^^^^^^^^^^
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:171:30: Error: The method 'toStringShort' isn't defined for
    the class 'PictureStreamCompleter'.
     - 'PictureStreamCompleter' is from
     'package:flutter_svg/src/picture_stream.dart'
     ('../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pi
     cture_stream.dart').
    Try correcting the name to the name of an existing method, or defining a
    method named 'toStringShort'.
          ifPresent: _completer?.toStringShort(),
                                 ^^^^^^^^^^^^^
    ../../../.pub-cache/hosted/pub.dartlang.org/flutter_svg-0.17.4/lib/src/pictu
    re_stream.dart:266:11: Error: Superclass has no method named
    'debugFillProperties'.
        super.debugFillProperties(description);
              ^^^^^^^^^^^^^^^^^^^

    Command PhaseScriptExecution failed with a nonzero exit code
    note: Using new build system
    note: Building targets in parallel
    note: Planning build
    note: Constructing build description

Could not build the application for the simulator.
Error launching application on iPhone SE (2nd generation).

