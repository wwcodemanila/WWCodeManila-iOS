
# Xcode Essentials
After we had a glimpse on the language - Swift - used for building iOS Application. We will now familiarized with also one of the essentials of creating an app, the **Xcode IDE**. 

In this session, we will be able to:

* Have a tour in the Xcode IDE
* Create our own simple application

# Xcode IDE
Xcode is the IDE developed by Apple for developing software for macOS, iOS, watchOS, and tvOS. It is only available in **macOS**.

# Creating a New Project
1. Open Xcode from the Application Directory
2. Xcode welcome window will appear. By default, the welcome screen is always displayed when Xcode is launched. If you don't want to display it on launch, toggle the checkbox ("Show this window when Xcode launches"). However, it is advisable to leave as it is.

    ![alt text](https://imgur.com/cX443S1.jpg "Xcode Welcome window")

3. To create a new project, you can either:
    * Click the **Create a new Xcode project** or
    * From the Menu, **File -> New -> Project...**

    ![alt text](https://imgur.com/QaHa7cM.jpg "Create a New project")

4. Once you click **Create a new project** (or the **File -> New -> Project...**), another window will display. This contains the templates of creating an app. There are various ways of creating an app, but to create a simple app, we will use **Single View Application**. Click Next.

    ![alt text](https://imgur.com/uEOvjhc.jpg "Templates for creating Xcode project")

5. In the dialog that appears, you can follow the format of the values in the image. Kindly change it according to your preferences.

    ![alt text](https://imgur.com/BTY6R5p.jpg "Dialog box with Project information fields")

    * **Product Name** - Xcode uses the product name you entered to name your project and the app.

    * **Team** - If this is not automatically filled in, set the team to None. For now, we can leave it as None but if you want to deploy an application to the AppStore, **Team** will be necessary.

    * **Organization Name** - The name of your organization or your own name.

    * **Organization Identifier** - Your organization identifier, if you have one. If you don’t, use com.example.

    * **Bundle Identifier** - This value is automatically generated based on your product name and organization identifier.

    * **Language** - We will be using **Swift** since according to the previous session, the language is best for beginners.

6. Click Next the Create.

# Getting Familiar with Xcode
![alt text](https://imgur.com/ily0Olt.jpg "Xcode IDE")

## Navigation Area
Provides quick access to the various parts of your project. [1]

Contains various navigator tabs including the Project/File navigator that will be used most of the time. Project/File navigator is used to add, delete, group and manage files. Upon clicking specific file displays corresponding editor in the Editor Area.

## Editor Area
Allows you to edit source code, user interfaces, and other resources. [1]

## Utility Area
Contains various inspector tabs that provides information about selected user interface element or code from the Editor Area.

## Debug Console
This area shows you diagnostic info and errors when you run your project. [2]

## Toolbar
Used to build and run your apps, view the progress of running tasks, and configure your work environment. [1]

# Exercise: Create your First Simple Application

###### References:  
[1] [_Build a Basic UI_](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW1)
###### Discussions:
[_WWCodeManila-iOS Study Group_](https://www.meetup.com/Women-Who-Code-Manila/messages/boards/thread/50790558)
