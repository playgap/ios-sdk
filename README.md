# Playgap integration guide for publishers
In this guide, we explain how you can monetise your offline gameplay with Playgap. As such, you would need to integrate our SDK, configure your integration, and create ad units. Upon completing the integration, before going live, you’d need to receive a unique application ID from our team: hello@playgap.io  

Playgap software design prioritises stability, compatibility, transparency and customer needs. If you have any questions, our engineering and business teams would be happy to support you over email and messengers.  

## iOS SDK Integration
Playgap supports iOS versions 11 and over in line with Apple’s deprecation roadmap. If your application is designed to support iOS 10 or earlier, get in touch with us. We support all mobile integrations compatible with Native iOS SDKs.  

### Step 1. Obtain Playgap iOS SDK
There are two options for obtaining Playgap iOS SDK (CocoaPods, .xcframework and git clone). Choose the one that is most suitable for your application.  

**Option 1. Install with CocoaPods (recommended)**  

This is the standard method preferred by most iOS developers. CocoaPods is the go-to package manager software and package maintainer for iOS. This guide assumes you are a CocoaPods user and have the necessary software installed on your system. To improve your understanding of the project, consider reading the official documentation.  

If you haven't initialised a pod project already, navigate to the folder of your Xcode project in your preferred terminal and run the following command. Otherwise skip running the command and follow on reading.  

```
pod init
```

This command will create a new project for your pods as well as a workspace to contain both your project and pods project. You need to close Xcode and use the `.xcworkspace` file to open your project instead of `.xcproject`.  

To install Playgap iOS SDK pod, add the following line to your podfile.  

```
pod 'PlaygapSDK','1.0.0.0'
```

Then use the following command in the terminal application of your choice. Make sure you are still in your app's folder which now contains the workspace and both projects.  
```
pod install
```

Cocoapods will configure the downloaded pod and make it available to your Xcode project. At this point you are able to start using Playgap iOS SDK.  

**Option 2. Download the .xcframework**  

Download the .xcframework directly from the Playgap Github page under ‘Releases’ where our latest iOS SDK is normally available. This will require you to manually add the framework to your Xcode project.  

Visit the ‘Releases’ page via the following link to download the latest (or a previous version) of the SDK. https://github.com/BloopAI/bloop/tags  

Once the prebuilt `.xcframework` package is downloaded, you will need to add the framework to your Xcode project. You can do this by using `File > Project > Add Package` in the top navigation menu.  

### Step 2. Update Info.plist  
Playgap ad network ID should be included in your app property list file (Info.plist) in order to comply with Apple's ad guidelines and have a reliable advertising experience.  

1. Select Info.plist in the Project navigator in Xcode
2. Click the (+) next to a key in the property list editor to add a new record
3. The key should be named `SKAdNetworkItems`
4. Chose ‘Array’ from the type dropdown since this record may contain multiple ad network ids in the future
5. Create a dictionary item with just a single key-value (type string) item. Key name should be set to `SKAdNetworkIdentifier`, and the key value to: `playgap.skadnetwork`.

You can also add SKAdNetworkIdentifier to your Info.plist, by using following definition
*(NOTE: if SKAdNetworkItems is already included, then simply add the SKAdNetworkIdentifier for Playgap into the existing array)*

```
<key>SKAdNetworkItems</key>
<array>
   <dict>
      <key>SKAdNetworkIdentifier</key>
      <string>playgap.skadnetwork</string>
   </dict>
</array>
```

*The ad network id for Playgap will be assigned by Apple as soon as preparations are complete. Note that the information will be delivered to you separately if you are a publisher partner.*

**App Transport Security Settings**  

It is highly recommended to extend the set of http requests the app is allowed to make to ensure that ad delivery doesn't get interrupted. With this configuration missing, Playgap's ability to deliver a complete and performant ad experience will be severely affected.  

As a top level entry, please include a dictionary item with the key `NSAppTransportSecurity` and add a key-value pair under it where the key for this pair is `NSAllowsArbitraryLoads` and the value is type boolean set to `YES`.  

You can read more about Application Transport Security (ATS) [here](https://developer.apple.com/library/prerelease/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW33).  

### Step 3. Set the Delegates
Playgap iOS SDK will report significant events back to your application for tight interoperability. To be able to listen to these events and act accordingly in your application, set the following delegate functions in your ViewController. Make sure you import Playgap framework or Xcode will alert you about not being able to recognize the references.  

```
import Playgap
```

To be able to implement your functions for Playgap SDK events your ViewController must implement both `ShowDelegate` and `ClaimRewardsDelegate` protocols.  

```
extension DemoViewController: ShowDelegate, ClaimRewardsDelegate {

}
```

The following code block lists the functions and their interface definitions.  

```
//
// Your call to show an available ad failed due to  the reported reason
//
func onShowFailed(error: PlaygapAds.ShowError) {
  print("Show Failed " + error.localizedDescription)
}

// 
// Your call to show an available ad resulted in success
// The ad view has been rendered on screen
// 
func onShowImpression() {
  
}

// 
// The displayed ad started playback
// 
func onShowPlaybackEvent() {
  
}

// 
// The displayed ad completed the playback.
// 
func onShowCompleted() {
  
}

// 
// Online reward screen has been displayed to the user.
// 
func onRewardScreenShown() {
  
}

// 
// Online reward screen failed to be displayed.
// 
func onRewardScreenFailed() {
  
}

// 
// The user click was redirected to the advertised application in the app store
// 
func onStoreClick() {
  
}

// 
// The user is rewarded from returning to the application after engaging with the app store. An error can return if this was due to a failure to open the app store.
// 
func onUserClaimedReward(_reward: Reward, error: Error?) {
  
}
```
### Step 4. Initialise the Playgap SDK
```
PlaygapAds.initialize(apiKey: "YOUR_API_KEY") { error in
  if let error {
    print("Initialization Failed " + error.localizedDescription)
  } else {
    print("Initialization Completed")
  }
}
```

### Step 5. Verify Your Integration

Playgap iOS SDK and Platform integration requires manual verification. As soon as you feel comfortable with your app's Playgap SDK integration, please get in touch via hello@playgap.io  

**Integrate with Objective-C**  
Playgap iOS SDK has been developed with the Swift language but it supports operation in Objective-C applications completely. If your application is developed using Objective-C as a software language please follow the additional steps below to enable support.  

## Change Log
### SDK
*Stable release version 1.0.0 of Playgap iOS SDK is scheduled for release on September 1st, 2023. Playgap follows a three figure and mark naming convention for versioning. New SDK versions will be made available as alpha, beta and rc (release candidate) before the stable release.*  

**v.1.0.0-rc**  
- MMP integrations have been activated (Appsflyer, Adjust).
- You can now use test mode configuration to receive test ads.
- SDK API revised for standardisation.
- App lifecycle events are now supported, implementing delegates is possible.  

**Platform**  
You can follow changes to Playgap Platform under this topic. Change sets are labelled by date.  

**2023-08-01**  
- Publisher and Advertiser reporting is now available for configuration. Visit your platform page to make over the air changes to your application’s ad configuration.
- Cross promo ads are now offered as an option when creating ads.
- It’s now possible to mark your ads as eligible for intelligent ad selection to take advantage of Playgap’s new delivery ML model.

## Ad Units
### Rewarded Video
Playgap Rewarded Video ad format has been designed to support offline connectivity and displaying ads during offline sessions. Although the ad format shares the basic principles of a standard rewarded video ad, it has distinctive properties to set it apart from its online counterparts.  
Playgap Rewarded Videos, displayed when offline, do not support clickthrough actions since the user won’t be able to reach Apple App Store or websites while offline. Instead, Playgap SDK renders the video offline and carries the app sheet online. It is possible to display multiple video ads during the offline session as long as you have pre-cached enough ads when the user was online.  

In the event of connection status change to online, Playgap SDK detects the switch automatically and displays a half screen prompt to the user, welcoming the user back online and reminding them to claim their rewards for the video ads they watched offline. Each online ‘claim reward button’ refers to a single specific reward and, on tap, it displays the Apple App Store sheet related to the ad that the user watched offline. The app sheet gives the user a chance to install the application shown in the ad. As such, the user watches the ad offline and views its associated app sheet once online.  

The rewarding process is handled by the developer and should be implemented in the respective delegate function which will be called right after the user completes its interaction with the Apple App Store sheet. Developers have two options for issuing rewards. The first option is to issue the reward once the user is back online. The second option is to give a portion of the reward offline upon completion of the view and give the remaining portion online (read more on partial rewards below). It is essential that a portion of the reward is carried over online for the user to be able to view the app sheet associated with the ad.  

**Displaying a Rewarded Video Ad**  
Being able to display a rewarded video ad requires loading available ads into the local cache of the application. Playgap SDK expects the application developer to make an explicit call to the loadRewarded function to start the caching process.  
The following code snippet exhibits the bare minimum implementation of the required functionality:  

```
var loadedAd: PlaygapAd?

PlaygapAds.loadRewarded { result in
switch result {
      		case .success(let ad):
                print("Load successful")
                self.loadedAd = ad
            case .failure(let error):
                print("Load failed: " +  error.localizedDescription)
                break
            }
 }
```
Keeping a reference to the loaded ad is optional but in general it is a good idea to be able to access it ViewController wide so that you can use it to show an ad in any sub function.  

The above code snippet also displays how you can handle the result of the loading process. Regardless of the result of the process, you can use the following code snippet to display the loaded ad, since it will be checking the reference variable for null condition.  

```
guard let ad = loadedAd else { 
	// Handle the scenario in which the ad is not loaded yet
return 
}
PlaygapAds.show(ad, from: self, delegate: self)
```

For the complete functionality, you are expected to implement necessary delegate functions. You can find the list of available delegates [here](http://playgap.io).  

### Rewarded Video with Partial Reward
Rewarded Video with a Partial Reward, although denoted individually, is mostly the same ad format as the Reward Video. But the experience of the end user changes with this ad format since the developer will be rewarding the user once when the offline video playback has been completed and once again when the user interacts with the online ‘claim reward’ button as in the scenario with the standard Rewarded Ad.  

Rewarded Video with a Partial Reward has the exact same functionality and is implemented the same way as the Rewarded Video. The only distinction is that you are expected to handle the onShowCompleted delegate and implement the way you want to handle the first part of the reward.  

Read [here](https://playgap.io) for Rewarded Video integration and find the list of delegates and its definitions [here](https://playgap.io)  

### Interstitial with Reward
As in the case of Rewarded Video with Partial Reward, Interstitial with Reward mimics the behaviour of a Rewarded Video ad. The implementation will be exactly the same as for the rewarded ad format and you will be handling the earned reward cases the same way. The only difference is that while rewarded video is user initiated, interstitials are developer-initiated.  

To show an Interstitial with Reward follow the steps described in this section. Use the PlaygapAds.show method the moment you find suitable for video ad display instead of waiting for an explicit interaction from the user usually through a button.  

Contact your partner manager for advice on the best of the 3 integration scenarios for your game, of reach out to hello@playgap.io  

*The tailored path to showing an Interstitial with Reward is planned to be supported at the SDK API level in the near future.*  

## Test Your Integration
Playgap Platform supports configuration of an application as being in test mode. While in test mode, your app will be receiving a constant flow of test ads for all three rewarded ad formats. You should not worry about the fill rate or completion process of the caching operation. Use this opportunity to test your Playgap integration end-to-end before deploying your updated application to the public.  

Beware that, If you enable test mode for your application,  the actual ad campaign delivery to the users of the application will stop imminently and your application won’t be regarded as operational by the algorithm. This won’t only stop the ad delivery and cause revenue loss but also force the system to forget about all the learnings memorised for your application.  

For security reasons the test mode enablement is not enabled in the application code and should be set to the desired value in your Playgap Dashboard. Reach out to your partner manager for help on how to start using the Platform Dashboard to configure your application for ad delivery.  
















