# food_app

We were going to the Food Ordering App Tutorial from The Flutter Way YouTube. 

Online Food Ordering App - Flutter UI - Speed Code
https://www.youtube.com/watch?v=F0ujC60wHwc&t=1378s

YouTube Channel: The Flutter Way

Things that I learned.

    1) In the Theme.of(Context).textTheme, we have a few deprecated members. 
    	Here is a list:
    	display4 should be replaced with this.headline1
	display3 should be replaced with this.headline2
	display2 should be replaced with this.headline3
	display1 should be replaced with this.headline4
	headline should be replaced with this.headline5
	title should be replaced with this.headline6
	subhead should be replaced with this.subtitle1
	subtitle should be replaced with this.subtitle2
	body2 should be replaced with this.bodyText1
	body1 should be replaced with this.bodyText2
	
     2) We have a cool widget SingleChildScrollView that give you out of the box way to create a scrollable menu.

     3) Error Message: command phasescriptexecution failed with a nonzero exit code flutter
	We did a flutter upgrade and it broke something. We tried the pod init and install. 

	We went through a lot of troubleshooting. We found that upgrading the flutter_svg to last version fixed the issue. 
		
	Could not build the application for the simulator.
	Error launching application on iPhone SE (2nd generation).
		
	Here is somethings that we tried and error logs. 
	Used for diagnostics
	> cd ios
	> xcrun xcodebuild -configuration Debug -showBuildSettings -workspace Runner.xcworkspace -scheme Runner

		


