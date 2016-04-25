# Qucit - Transport Track ![Platforms](https://img.shields.io/badge/platform-ios%20%7C%20android-lightgrey.svg)

Transport Track is a cross-platform mobile application, developed by 6 computer science students from [Bordeaux-INP][] [ENSEIRB-MATMECA][], 
a French Engineering School in Bordeaux.

The purpose of Transport Track is redirecting users in the transportation failures on Bordeaux-Metropole network.
Its has been developed for a start-up incubated in the [Aquitaine Regional Incubator][] called [Qucit][].

Transport Track is available for all platforms supported by the [Apache Cordova][] framework but actually only tested on iOS and Android.

The client side is developed with [Polymer][] and [Material Design][] Google frameworks, and the back-end with Python through [Flask][] and [Pandas][] frameworks.

This project involves [Web Components][] in the client side, and [BI][] (Business inteligence) using some [Machine Learning][] algorithms in the transportation failures treatment (classification).

##Installation

First, you need to get [Apache Cordova][], with [npm][] : `npm install -g cordova` or download it from the website.
And also, you have to install the [Android SDK][] to build android Transport Track version, or [Xcode][] to build it for iOS.
(Think to include the SDK's `tools/` and `platform-tools/` directories  in your `PATH` after installing Android SDK (here's a link that can help you doing these installations : https://cordova.apache.org/docs/en/4.0.0/guide/platforms/android/ ))

Clone Qucit - Transport Track with `git clone https://github.com/piroux/pfa29_client`

####Auto install :

Run the install.sh script :

	cd PFA-Qucit/
	chmod 700 install.sh
	./install.sh

####Manual install :

Run the following :

	cd PFA-Qucit/
	cordova create qucit com.debug.qucit Transport Track
	rm -r qucit/www/
	mv qucit/* .
	rm -r qucit/

Add the platforms you need, for example iOS and Android :

	cordova platform add ios
	cordova platform add android

and other supported platforms if you want.

Build it with `cordova build` or just run it on your device  with `cordova run android` and/or `cordova run ios`.

####Overview on your browser :

If you want to have an overview of Transport Track on your browser, run the following :

	cd PFA-Qucit/www/
	python -m SimpleHTTPServer 8080
	
You can see the result in your browser by going to your localhost on port 8080 : `localhost:8080`

##Get Transport Track

If you want Transport Track on your smartphone, you can build it yourself by following the steps described above.

Or you can just download our compiled version (April 2016) available here : https://drive.google.com/folderview?id=0B8GtnazCc-T7T3ZmZzlRTnY0V2s&usp=sharing

##Licensing

Transport Track is licensed under the GNU LGPL, Version 3.0. See LICENSE for full license text.

##Useful links

- A demonstration of the client side : https://www.youtube.com/watch?v=Ge3O-btlwzI
- Tender specifications : http://mrihani.vvv.enseirb-matmeca.fr/donnee/PFA_CDC.pdf
- Documentation : http://mrihani.vvv.enseirb-matmeca.fr/donnee/PFA_Doc.pdf
- Repport : http://mrihani.vvv.enseirb-matmeca.fr/donnee/PFA_Rapport.pdf
- Presentation : http://mrihani.vvv.enseirb-matmeca.fr/donnee/PFA_Presentation.pdf


##Contacts

###Supervisor

- Toufik AHMED (Professor and head of Computer Science Department at [Bordeaux-INP][] [ENSEIRB-MATMECA][]) - toufik.ahmed@labri.fr

###Client

- Raphaël CHERRIER (CEO at [Qucit][]) - raphael.cherrier@qucit.com
- Hassene BENSALEM (CTO at [Qucit][]) - hassene.bensalem@qucit.com

###Students

- [Mohammed RIHANI][] - Mohammed.Rihani@enseirb-matmeca.fr
- Mehdi BOUNAKHLA - Mehdi.Bounakhla@enseirb-matmeca.fr
- Pierre ROUX - Pierre.Roux@enseirb-matmeca.fr
- Victor SAINT GUILHEM - Victor.Saint-Guilhem@enseirb-matmeca.fr
- Romain RAMBAUD - Romain.Rambaud@enseirb-matmeca.fr
- Nathan REAVAILLE - Nathan.Reavaille@enseirb-matmeca.fr

[ENSEIRB-MATMECA]: http://www.enseirb-matmeca.fr
[Bordeaux-INP]: https://www.bordeaux-inp.fr/
[Qucit]: http://www.qucit.com
[Aquitaine Regional Incubator]: http://www.incubateur-aquitaine.com
[Polymer]: http://www.polymer-project.org
[Material Design]: https://www.google.com/design/spec/material-design/introduction.html
[Apache Cordova]: http://cordova.apache.org
[npm]: https://www.npmjs.com/
[Flask]: http://flask.pocoo.org
[Pandas]: http://pandas.pydata.org
[Web components]: http://webcomponents.org/
[BI]: https://en.wikipedia.org/wiki/Business_intelligence
[Machine Learning]: https://en.wikipedia.org/wiki/Machine_learning
[Android SDK]: http://developer.android.com/sdk/installing/index.html
[Xcode]: https://itunes.apple.com/fr/app/xcode/id497799835?mt=12
[Mohammed RIHANI]: http://mrihani.vvv.enseirb-matmeca.fr
