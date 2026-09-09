Pod::Spec.new do |s|
    s.name             = 'PlaygapAdMobAdapter'
    s.version          = '1.0.0'
    s.summary          = 'Google AdMob mediation adapter for the Playgap SDK'
    s.description      = 'Bridges Playgap ad mediation (PlaygapSdk) to the Google Mobile Ads (AdMob) iOS SDK.'
    s.homepage         = 'https://playgap.io'
    s.license          = { :type => 'Proprietary', :text => "Copyright 2026 Playgap Ltd. All rights reserved." }
    s.author           = { 'Andrei' => 'andrei@playgap.io' }
    s.source           = { :git => 'https://github.com/playgap/ios-sdk.git', :tag => "adapter-admob/#{s.version}" }

    s.ios.deployment_target = '13.0'
    s.vendored_frameworks = 'adapter-admob/PlaygapAdMobAdapter.xcframework'

    s.dependency 'Playgap', '>= 6.2.1'
    s.dependency 'Google-Mobile-Ads-SDK'

    s.requires_arc = true
    s.static_framework = true
end
