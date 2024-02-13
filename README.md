# Playgap iOS SDK

[![Version](https://img.shields.io/cocoapods/v/Playgap.svg?style=flat)](https://cocoapods.org/pods/Playgap)
[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager)
[![Downloads](https://img.shields.io/github/downloads/playgap/ios-sdk/total.svg)](https://cocoapods.org/pods/Playgap)

The Playgap SDK enables mobile app developers to monetize offline and online gameplay via advertisements. 

### Supported Platforms

- [Unity](https://github.com/playgap/unity-plugin)
- [iOS](https://github.com/playgap/ios-sdk)
- Android (coming March 2024)

## How should I use the SDK

1. Initialize Playgap SDK at the start of every session while offline or online
2. Load and Show Playgap Ads to users
3. Grant rewards for completed ads
4. Grant additional rewards for Claiming Rewards from Offline Ads when the user returns online

## How to Install the SDK

<details>
  <summary><b>Requirements and Installation Steps</b></summary>

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
Playgap ad network ID is required to be included in your app property list file (Info.plist) in order to successfully initialize the Playgap SDK, to comply with Apple's ad guidelines, and have a reliable advertising experience.

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

</details>

## How can I test the SDK <a name="testing"></a>

Use the Testing API Key to Initialize the Playgap SDK: `PlaygapTestID123`.

This ID is configured to always send test advertisements, so that the integration within an application can be easily tested and integrated in your application.

## How should I go live with the SDK <a name="go-live"></a>

1. Integrate the SDK using [the APIs](#sdk-apis) and [Performance Tips](#performance-tips)
2. Obtain an API Key for you application by reaching out us to via hello@playgap.io
3. Exchange the Testing API key for your Application API Key
4. Submit your application to the App Store

## What setups do the SDK work with <a name="how-to-use"></a>

<details>
  <summary><b>Rewarded and Interstitial Placements</b></summary>
    <p></p>
        
Playgap Ads can be showed for all ad scenarios (Rewarded and Interstitial) within your app. This includes examples such as:
- A user pressing a button offering 20 in-game currency to watch an ad
- An ad automatically shown after failing to complete a level

**The user must receive a Reward for viewing these ads.**

You can show Playgap Ads in both Rewarded Ad surfacing points and Interstitial Ad surfacing points within the same application. This would cover both cases of User-Initiated and Application-Initiated Ads.

The APIs and Configurable features offered by the SDK allow for the game to have full discretion over the manner in which ads are displayed to the user.

</details>
<details>
  <summary><b>Offline Gameplay</b></summary>
    <p></p>

During offline gameplay, the Playgap SDK can be used to Initialize the SDK, Load, and Show ads, and Check Rewards.

The SDK must be initialized at least once while connected to the internet first to be able to be used for offline sessions.

After this, ads can be shown offline to keep the experience consistent for users, and users should receive rewards for completed offline ads. Ads that complete fully offline are considered Unclaimed. If the user reconnects to the internet while the ad is playing, then the SDK will automatically shift to the Online Flow, and grant the reward as Claimed if the Appsheet is able to be presented during this flow.

Once the user returns to online gameplay, the application should present the user with a dialog to claim the Unclaimed rewards as soon as possible. 

On this dialog, upon claiming the reward, the user will be presented with Appsheets associated with the ads that were watched offline. Playgap counts the rewards as Claimed after this Appsheet is dismissed.

It is imperative that the Appsheets are shown, as this is what is counted as a monetizeable event.

We recommend that this dialog is displayed via the Claim Rewards API as soon as the connection is re-established for a user with unclaimed rewards. The Claim Rewards sheet can be launched whenever the user is connected to the internet.

**The user should be rewarded for both completing ads while offline, as well as when they claim rewards while online.**

</details>

<details>
  <summary><b>Online Gamplay</b></summary>
    <p></p>

During online gameplay, the Playgap SDK can be used to Initialize the SDK, Load, and Show ads, and Check Rewards.

In comparison to the offline flow, online ads will display the Appsheet to the user during the flow. If the user loses connection before this point, then it will fallback to the Offline flow.

Ads which are able to display the Appsheet while the user is connected will have their rewards immediately counted as Claimed. Claimed rewards do not require

</details>


## SDK APIs <a name="sdk-apis"></a>

<details>
  <summary><b>Initialize</b></summary>

### `PlaygapAds.initialize`

The Initialize API prepares the SDK for use during a user session. To use the it effectively:
1. Call Initialize immediately once the application launches with the correct API Key:
    - [API Key for Testing](#testing)
    - [API Key for For Live Applications](#go-live)
2. Await for Initialization Complete to use the other SDK APIs
3. Avoid calling Initialize multiple times (such as in the Unity Update Loop)

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

</details>

<details>
  <summary><b>Load</b></summary>

### `PlaygapAds.loadRewarded`

The LoadRewarded API prepares a fullscreen ad to be shown during the user session. To use the it effectively:
1. Call LoadRewarded before you need to show an Ad
2. Await for a successful LoadComplete to return a single-use Playgap Ad

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

</details>

<details>
  <summary><b>Show</b></summary>

### `PlaygapAds.show`

The Show API prepares a fullscreen ad to be shown during the user session. To use the it effectively:
1. Ensure LoadRewarded returned a Playgap Ad
2. Call Show when you want to show a Fullscreen Ad
3. Reward the user for completing the Ad
    - Offline: Only `onShowCompleted` will be triggered
    - Online: Both `onUserClaimedReward` and `onShowCompleted` will be triggered
4. Resume normal app operation when either `OnShowSkipped` or `onShowCompleted` is triggered


```swift
guard let ad = loadedAd else { return }

PlaygapAds.show(ad, from: {UIViewController}, delegate: {ShowDelegate})
```

</details>

<details>
  <summary><b>Check Rewards</b></summary>


### `PlaygapAds.checkRewards` <a name="check-rewards"></a>

The CheckRewards API is a utility function to understand the internal state of Rewards in the SDK while integrating and testing it in your application. To use the it effectively:
1. Read the "Understand How ID Tracking Works" under [Performance Tips](#performance-tips)
2. Test and Trigger the scenarios mentioned in this section through your application code to deepen your understanding
3. Remove these API calls from your code before submitting to the App Store

```swift
let rewards = PlaygapAds.checkRewards()
print("Unclaimed rewards \(rewards.unclaimed)")
print("Claimed rewards \(rewards.claimed)")
```

</details>

<details>
  <summary><b>Claim Rewards</b></summary>

### `PlaygapAds.claimRewards`<a name="claim-rewards"></a>

The ClaimRewards API is used to present a Dialog to the user which allows them to Claim their Unclaimed Rewards when they return online. To use the it effectively:
1. Read and Understand what Unclaimed Rewards are under [PlaygapAds.CheckRewards](#check-rewards)
2. Call ClaimRewards as soon as possible once a user establishes internet connection (see[PlaygapAds.NetworkObserver](#network-observer))

```swift
PlaygapAds.claimRewards(from: {UIViewController}, delegate: {ClaimRewardsDelegate})
```

</details>

<details>
  <summary><b>Network Observer</b></summary>

### `PlaygapAds.networkObserver`<a name="network-observer"></a>

The Network Observer is a utility which exposes the connection state of the user and provides updates the moment that a connection change occurs. To use it effectively:
1. Attach an observer to it when the application launches
2. Call [PlaygapAds.ClaimRewards](#claim-rewards) as soon possible in the Application Flow when the Network Observer produces a `true` value (meaning the user has reconnected to the internet)

```swift
// TODO
```

</details>

## Performance Tips <a name="performance-tips"></a>

Below are some performance recommendations to maximize the effectiveness of the Playgap SDK, and improve your understanding about how it functions.

<details>
  <summary><b>Initialize the SDK as soon as the App Launches</b></summary>
    <p></p>

When your application launches, initialize the Playgap SDK immediately.

It is a common user behavior to disconnect from the internet during the first few seconds of gameplay. It's vital to use this window of opportunity to ensure that the Playgap SDK can use this opportunity to prepare and update ads to present to the user while offline.

</details>

<details>
  <summary><b>Claim Rewards as soon as Connection is Available</b></summary>
    <p></p>

The Network API gives access to the moment a user reconnects to the internet.

Displaying users with the opportunity to install the ad while online is required to generate revenue. Therefore, it is important that the Claim Rewards Dialog is displayed to users when they have claimed rewards while offline, and while the connection to a network is established.

The amount of unclaimed rewards can be accessed via the Check Rewards API after the SDK has been initialized successfully.

</details>

<details>
  <summary><b>Show Ads in the Order they were Loaded In</b></summary>
    <p></p>

Multiple ads can be loaded concurrently if necessary for you game's integration.

Playgap will always attempt to provide the maximum value for the ads shown within the user session. It achieves this by loading the most valuable ads as soon as possible.

It is possible your integration requires both loading and showing multiple ads in row. This behavior is covered by the SDK, but it is important to prioritize displaying ads in the correct order, as this can lead to the best monetisation outcomes.

</details>

<details>
  <summary><b>Understand How ID Tracking Works</b></summary>
    <p></p>

The Playgap SDK outputs certain identifiers on:

- The Loaded Playgap Ad => Object ID
- The Impression once the ad is shown => Impression ID
- The Reward collected offline when the ad completes => Reward ID
    - If the user was offline, the Playgap SDK considers this an "Unclaimed" Reward
    - If the user was online, the Playgap SDK considers this an "Claimed" Reward
- The Claimed Reward once the user returns online => Reward ID
    - At this stage, the Playgap SDK considers this a "Claimed" Reward

All of these IDs will be identical at the different stages of the ad lifecycle, and are exposed via the SDK APIs. These can be used for any purpose, such as aligned event tracking, fraud prevention, or unique rewarding solutions.

The PlaygapAds.CheckRewards API can used to check both claimed and unclaimed rewards:

- Claimed rewards are all of the Reward IDs the user has received since the most recent update of the Playgap SDK
- Unclaimed rewards are all of the rewards from advertisements which have not yet been claimed from the Claim Rewards Dialog

</details>

## Need additional help?

If you have any questions, then our engineering and business teams would be happy to support you over email and messengers via hello@playgap.io or directly through your account manager.

