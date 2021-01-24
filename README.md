# setup

So these are the things that have been setup so far:

## Folder Structure
||||
|:-|:-|:-|
|_internal/|||
||_utils/||
|||theme_mod_util.dart|
|||utils.dart|
|api/|||
||api_public.dart||
|controllers/|||
||controllers.dart||
||locale_controller.dart||
||storage_controller.dart||
||theme_controller.dart||
|models/|||
||menu_options/||
|||menu_option.dart|
|||menu_options_model.dart|
|routes/|||
||app_pages.dart||
||app_routes.dart||
||routes.dart||
|services/|||
||basic_login.dart||
|ui/|||
||theme/||
|||app_theme.dart|
|||dark_theme.dart|
|||light_theme.dart|
|||text_theme.dart
||views/||
|||icons.dart|
|||localization.dart|
|||localization.g.dart|
|||strings.dart|
|||themes.dart|
|main.dart|||
||||

## Pubspec.yaml
```name: setup
description: Collection of widgets, tools, and other useful pieces when beginning a new project
version: 0.0.1

environment:
  sdk: ">=2.7.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  cupertino_icons: ^1.0.0
  firebase_core: "0.7.0"
  flutter_sheet_localization: ^2.0.1
  freezed_annotation: ^0.12.0
  get: ^3.23.1
  get_storage: ^1.3.2
  remote_state: ^1.5.0

dev_dependencies:
  build_runner: ^1.10.13
  freezed: ^0.12.7
  lint: ^1.2.0
  test: ^1.15.7


flutter:
  uses-material-design: true
  ```

## Android
- ```android/build.gradle```
```buildscript {
  dependencies {
    // ... other dependencies
    classpath 'com.google.gms:google-services:4.3.3'
  }
}
```
- ```android/app/build.gradle```
```  

apply plugin: 'com.google.gms.google-services'

defaultConfig {
        // TODO: Specify your own unique Application ID
        applicationId "dev.fhirfli.setup"
        minSdkVersion 21
        targetSdkVersion 29
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        manifestPlaceholders = [
            'appAuthRedirectScheme': 'dev.fhirfli.setup'
        ]
    }

```
- Note: you will need to change all instances of 'dev.fhirfli.setup' to your personal scheme when creating a new app

## iOS

- ```ios/Runner/Info.plist```
```
	<key>CFBundleURLTypes</key>
		<array>
    		<dict>
				<key>CFBundleTypeRole</key>
				<string>Editor</string>
				<key>CFBundleURLSchemes</key>
				<array>
            		<string>dev.fhirfli.setup</string>
        		</array>
    		</dict>
		</array>
```
