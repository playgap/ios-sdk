# Playgap SDK

[![Version](https://img.shields.io/cocoapods/v/Playgap.svg?style=flat)](https://cocoapods.org/pods/Playgap)
[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager)


The Playgap SDK enables mobile app developers to monetize offline gameplay. As such, you would need to set up your customer account, add your application to your Playgap account to receive your API Key, and integrate the SDK. If you have any questions about this process, please reach out to your account manager or drop a message at hello@playgap.io.

Playgap software design prioritises stability, compatibility, transparency and customer needs. If you have any questions, our engineering and business teams would be happy to support you over email and messengers.

## The Flow and User Experience

The Playgap SDK offers a user experience which can be split into three parts: Preparation, Offline, and Online
### Preparation

Upon opening your application, users who often transition offline are connected to the internet for around 10 seconds. It's vital to use this window of opportunity to ensure that offline gameplay can be monetized.

Use this window to initialize the Playgap SDK to prepare itself for monetizing this offline gameplay. It's recommended that the SDK is always initialized on application start to never miss out on this opportunity. Even in the event that the user launches the application offline, the Playgap SDK can be initialized without internet connection for a certain duration (24-48 hours) if it was previously initialized successfully.

### Transition to Offline

During offline gameplay, the Playgap SDK (once initialized successfully) can then be used to Load and Show ads to users.
The APIs offered by the SDK allow for the game to have full discretion over the manner in which ads are displayed to the user. Whether the ad is user-initiated via a button, or the ad is an interstitial after a level completion, the Playgap SDK offers the flexibility for the game to decide if a Rewarded or an Interstitial flow is preferred.

The Playgap SDK currently offers loading of Rewarded Ads, meaning that there is an expectation of a Reward to the user, and both flows reflect this. If you choose to show an ad through an Interstitial flow, the user must be rewarded for completing the view. Using the "Skip" functionality, users can choose to skip the ad and lose the reward or complete the view to receive the reward.

The Playgap SDK will continue to allow Loading and Showing of advertisements at the applications discretion. The APIs allow for the number of claimed and unclaimed rewards obtained offline to be checked at any stage during gameplay. This allows for correct flexibility and limiting use of the SDK to the applications requirements.

### Return to Online

Once the user returns to online gameplay, the application has the opportunity to check the rewards that were accumulated offline, and present the user with a dialog to claim these rewards.
The APIs offered allow the game to make a smart decision about when and where in the application flow the Playgap "Claim Rewards" Dialog is shown to the user.

On this dialog, upon claiming the reward, the user will be briefly presented with an Appsheet associated with the ad they watched offline. Playgap counts the reward for the impression as claimed after this Appsheet is dismissed.

**There are multiple options to issue rewards to users:**

The Playgap SDK offers a clear set of IDs to match Impressions, to Rewarded Views, to Unclaimed Rewards. This offers a multitude of methods to tailor the user-rewarding experience correctly for your application.

Below you'll find our recommended rewarding mechanisms which align with our expected use of the SDK.

**Deliver Partial Reward on Video Completion (recommended):**

The application will receive the identifier for the unclaimed reward from the Playgap SDK at the moment the video completes. It is recommended that the reward is divided into two parts, to cover both the offline and the subsequent online session. This results in the best user experience as the user is partially rewarded during their offline gameplay, which is consistent with their typical online experience.

Example 1: A reward for viewing an online rewarded advertisement is 10 coins. For an offline user, this could be split into 5 coins delivered at video completion offline, and 5 coins delivered once the user returns online and claims them.

Example 2: Where splitting the reward is not possible, the user may be granted one type of reward offline, for example a life, and another type of reward once the user is back online, for example a booster or 2 coins.

**Deliver Full Reward on Claiming Reward:**

Allow the user to store rewards during offline gameplay without granting the rewards until the user claims them online. This incetivises the user to return online sooner.

Once the user returns online and claims the rewards, grant the full rewards.

## Requirements

| Platform | Minimum Swift Version | Installation | Status |
| --- | --- | --- | --- |
| iOS 12.0+ | 5.8 | [CocoaPods](#cocoapods), [Swift Package Manager](#swift-package-manager), [XCFrameworks](#xcframeworks) | Fully Tested |

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Playgap'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

Once you have your Swift package set up, adding Alamofire as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/playgap/ios-sdk.git", .upToNextMajor(from: "1.0.0"))
]
```

### XCFrameworks

Each release includes `*.xcframework` framework binaries.

Simply drag the needed framework binaries to your **Frameworks, Libraries, and Embedded Content** section under your target's **General** tab.

## Integration

### Update Info.plist  
Playgap ad network ID should be included in your app property list file (Info.plist) in order to comply with Apple's ad guidelines and have a reliable advertising experience.  

1. Select Info.plist in the Project navigator in Xcode
2. Click the (+) next to a key in the property list editor to add a new record
3. The key should be named `SKAdNetworkItems`
4. Chose ‘Array’ from the type dropdown since this record may contain multiple ad network ids in the future
5. Create a dictionary item with just a single key-value (type string) item. Key name should be set to `SKAdNetworkIdentifier`, and the key value to: `wbmgtnm2cz.skadnetwork`.

You can also add SKAdNetworkIdentifier to your Info.plist, by using following definition
*(NOTE: if SKAdNetworkItems is already included, then simply add the SKAdNetworkIdentifier for Playgap into the existing array)*

```xml
<key>SKAdNetworkItems</key>
<array>
   <dict>
      <key>SKAdNetworkIdentifier</key>
      <string>wbmgtnm2cz.skadnetwork</string>
   </dict>
</array>
```

## Usage

### Initialize SDK

All of the SDK APIs require the SDK to successfully initialize prior to use. The SDK will not execute any functionality without being initialized, so it is always recommended to initialize the SDK as soon as possible once the application started.

```swift
import Playgap

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        PlaygapAds.initialize(apiKey: "YOUR_API_KEY") { error in
            if let error {
                print("Initialization Failed " + error.localizedDescription)
            } else {
                print("Initialization Completed")
            }
        }
    }
}
```

### Load Rewarded Video Ad

In order to display an advertisment, one must first Load an ad object to be shown.

```swift
var loadedAd: PlaygapAd?

PlaygapAds.loadRewarded { result in
    switch result {
    case .success(let ad):
        loadedAd = ad
        print("Load successful triggered with id: \(ad.objectId)")

    case .failure(let error):
        print("Load failed: " +  error.localizedDescription)
    }
}
```

### Display Loaded Ad

Displaying an Ad will result in a fullscreen advertisement showing on the user's device. The fullscreen ad contains in-app controls for the user to skip over the reward if they desire, and to control the volume and mute status of the advertisement. If the user attempts to skip the advertisement, they will be prompted that this will result in losing the reward if they continue.

```swift
guard let ad = loadedAd else { return }

PlaygapAds.show(ad, from: {UIViewController}, delegate: {ShowDelegate})
```

### Claim Rewards

The online reward mechanic displays the app sheet associated with the video ad, which is when you earn revenue as a publisher.

```swift
let unclaimedRewards = PlaygapAds.checkRewards()?.unclaimed ?? []
print("Claim Rewards attempt triggered with \(unclaimedRewards.count) unclaimed rewards for IDs: \(unclaimedRewards)")

PlaygapAds.claimRewards(from: {UIViewController}, delegate: {ClaimRewardsDelegate})
```

## Delegates

Playgap iOS SDK will report significant events back to your application for tight interoperability. To be able to listen to these events and act accordingly in your application, set the following delegates.

For more information on the identifiers outputted, such as impression ID or Reward ID, please refer to the "Recommendations" section.

<details>
  <summary><b>ShowDelegate</b></summary>

  ```swift
  extension DemoViewController: ShowDelegate {

    func onShowFailed(error: Playgap.PlaygapAds.ShowError) {
        print("Show failed triggered: " + error.localizedDescription)
    }

    func onShowImpression(impressionId: String) {
        print("Impression triggered for id: \(impressionId)")
    }

    func onShowPlaybackEvent(_ event: Playgap.PlaybackEvent) {
        print("Playback event triggered: " + event.rawValue)
    }

    func onShowCompleted(_ reward: Playgap.Reward) {
        print("Show completed triggered with for id: \(reward.id)")
    }
}
  ```
</details>
<details>
  <summary><b>ClaimRewardsDelegate</b></summary>

  ```swift
  extension DemoViewController: ClaimRewardsDelegate {

    func onRewardScreenShown() {
        let unclaimedRewards = PlaygapAds.checkRewards()?.unclaimed ?? []
        print("Claim Reward screen shown triggered with \(unclaimedRewards.count) unclaimed rewards for IDs: \(unclaimedRewards)")
    }

    func onRewardScreenFailed(_ error: PlaygapAds.ClaimRewardsError) {
        print("Claim Reward screen failed to show triggered: " + error.localizedDescription)
    }
    
    func onRewardScreenClosed() {
        let claimedRewards = PlaygapAds.checkRewards()?.claimed ?? []
        print("Claim Reward screen closed triggered with \(claimedRewards.count) total claimed rewards for IDs: \(claimedRewards)")
    }

    func onStoreClick() {
        print("Store click triggered")
    }

    func onUserClaimedReward(_ reward: Playgap.Reward) {
        print("User claimed reward triggered with id: \(reward.id)")
    }
}
  ```
</details>

## Recommendations

Below are some useful recommendations for utilizing features of the Playgap SDK to ensure that you can use the SDK with the greatest flexibility to maximize the effectiveness to your use cases.
### Initialize the SDK Early Every User Session

It's important to initialize the SDK early in the user session for every new user session. The SDK relies on being connected to the internet at a certain point in time, but will be able to handle required functions once successfully initialized.

Upon opening your application, users that often transition offline are connected to the internet for around 10 seconds. This window of opportunity is vital to capitalize on to ensure that offline gameplay can be monetized.

To capitalize correctly, the application must initialize the Playgap SDK to prepare itself for monetizing this offline gameplay. It's recommended that the SDK is always initialized on application start to never miss out on this opportunity. Even in the event that the user launches the application offline, the Playgap SDK can be initialized without internet connection for a certain duration (24-48 hours) if it was previously initialized successfully.

### Show Ads in the Order they were Loaded In

Playgap will always attempt to provide the maximum value for the ads shown within user session. It achieves this by loading the most valuable ads as soon as possible.

It is possible your integration requires both loading and showing multiple ads in row. This behavior is covered by the SDK, but it is important to prioritize displaying ads in the correct order, as this can lead to the best monetisation outcomes.

### How ID Tracking Works

The Playgap SDK outputs certain identifiers on:
- The Loaded Playgap Ad => Object ID
- The Impression once the ad is shown => Impression ID
- The Reward collected offline when the ad completes => Reward ID
    - At this stage, the Playgap SDK considers this an "Unclaimed" Reward
- The Claimed Reward once the user returns online => Reward ID
    - At this stage, the Playgap SDK considers this a "Claimed" Reward

All of these IDs will be identical at the different stages of the ad lifecycle, and are exposed via the SDK APIs. These can be used for any purpose, such as aligned event tracking, fraud prevention, or unique rewarding solutions.

The PlaygapAds.checkRewards API can used to check both claimed and unclaimed rewards:
- Claimed rewards are all of the Reward IDs the user has received since the most recent update of the Playgap SDK
- Unclaimed rewards are all of the rewards from advertisements which have not yet been claimed from the Claim Rewards Dialog

## Verify Your Integration

Playgap iOS SDK and Platform integration requires manual verification. As soon as you feel comfortable with your app's Playgap SDK integration, please get in touch via hello@playgap.io

**Integrate with Objective-C**  
Playgap iOS SDK has been developed with the Swift language but it supports operation in Objective-C applications completely. If your application is developed using Objective-C as a software language please follow the additional steps below to enable support.  


## Test Your Integration
Playgap Platform supports configuration of an application as being in test mode. While in test mode, your app will be receiving a constant flow of test ads for all three rewarded ad formats. You should not worry about the fill rate or completion process of the caching operation. Use this opportunity to test your Playgap integration end-to-end before deploying your updated application to the public.  

Beware that, If you enable test mode for your application,  the actual ad campaign delivery to the users of the application will stop imminently and your application won’t be regarded as operational by the algorithm. This won’t only stop the ad delivery and cause revenue loss but also force the system to forget about all the learnings memorised for your application.  

For security reasons the test mode enablement is not enabled in the application code and should be set to the desired value in your Playgap Dashboard. Reach out to your partner manager for help on how to start using the Platform Dashboard to configure your application for ad delivery.
