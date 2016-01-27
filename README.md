# Qucit-App ![Platforms](https://img.shields.io/badge/platform-ios%20%7C%20android-lightgrey.svg)

App is a cross-platform mobile application, developed by 6 computer science students from [ENSEIRB-MATMECA][], 
a French Engineering School in Bordeaux.

The purpose of App is redirecting users in the transportation failures on the Bordeaux-Metropole network.
Its has been developed for a start-up incubated in the [Aquitaine Regional Incubator][] called [Qucit][].

App is available for all platforms supported by the [Apache Cordova][] framework but actually only tested on iOS and Android.

The client side is developed with [Polymer][] and [Material Design][] Google frameworks, and the back-end with Python throught [Flask][] and [Pandas][] frameworks.

##Installation

First, you need to get [Apache Cordova][], with [npm][] : npm install -g cordova or download it from the website.
And also, you have to install the [Android SDK][] to build android App version, or [Xcode][] to build for iOS (think of including the SDK's tools and platform-tools directories  in your PATH while installing Android SDK (here's a link that can help you doing these installations : https://www.grafikart.fr/tutoriels/cordova/apache-cordova-installation-432))

Clone Qucit-App with `git clone https://github.com/piroux/pfa29_client`

####Auto install :

Run the install.sh script :

	cd pfa29_client/
	chmod 700 install.sh
	./install.sh

####Manual install :

Run the following :

	cd pfa29_client/
	cordova create qucit com.debug.qucit App
	rm -r qucit/www/
	mv qucit/* .
	rm -r qucit/

Add the platforms you need, for example iOS and Android :

	cordova platform add ios
	cordova platform add android

and other supported platforms if you want.

Build it with `cordova build` or just run it on your device  with `cordova run android` and/or `cordova run ios`.

####Overview in your browser :

If you want to have an overview of App on your browser, run the following :

	cd pfa29_client/www/
	python -m SimpleHTTPServer
	
You can see the result in your browser by going to your localhost on port 8000 : `http://localhost:8000`

##Get App

If you want App on your smartphone, you can build it yourself by following the steps described above.

Or you can just download our compiled version (27 January 2016) available here : https://drive.google.com/folderview?id=0B8GtnazCc-T7T3ZmZzlRTnY0V2s&usp=sharing

##Licensing

App is licensed under the GNU LGPL, Version 3.0. See LICENSE for full license text.

##Contacts

###Supervisors

- Toufiq AHMED - tad@labri.fr

###Client

- Hassene BENSALEM - hassene.bensalem@qucit.com

###Students

- Mohammed RIHANI - Mohammed.Rihani@enseirb-matmeca.fr
- Mehdi BOUNAKHLA - Mehdi.Bounakhla@enseirb-matmeca.fr
- Pierre ROUX - Pierre.Roux@enseirb-matmeca.fr
- Victor SAINT GUILHEM - Victor.Saint-Guilhem@enseirb-matmeca.fr
- Romain RAMBAUD - Romain.Rambaud@enseirb-matmeca.fr
- Nathan REAVAILLE - Nathan.Reavaille@enseirb-matmeca.fr

[ENSEIRB-MATMECA]: http://www.enseirb-matmeca.fr
[Qucit]: http://www.qucit.com
[Aquitaine Regional Incubator]: http://www.incubateur-aquitaine.com
[Polymer]: http://www.polymer-project.org
[Material Design]: https//www.google.com/design/spec/material-design/introduction.html
[Apache Cordova]: http://cordova.apache.org
[npm]: https://www.npmjs.com/
[Flask]: http://flask.pocoo.org
[Pandas]: http://pandas.pydata.org
[Android SDK]: http://developer.android.com/sdk/installing/index.html
[Xcode]: https://itunes.apple.com/fr/app/xcode/id497799835?mt=12
