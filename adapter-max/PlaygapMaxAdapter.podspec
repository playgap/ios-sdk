Pod::Spec.new do |s|
    s.name             = 'PlaygapMaxAdapter'
    s.version          = '1.0.0'
    s.summary          = 'AppLovin MAX mediation adapter for the Playgap SDK'
    s.description      = 'Bridges Playgap ad mediation (PlaygapSdk) to the AppLovin MAX iOS SDK.'
    s.homepage         = 'https://playgap.io'
    s.license          = { :type => 'Proprietary', :text => "Copyright 2026 Playgap Ltd. All rights reserved." }
    s.author           = { 'Andrei' => 'andrei@playgap.io' }
    s.source           = { :git => 'https://github.com/playgap/ios-sdk.git', :tag => "adapter-max/#{s.version}" }

    s.ios.deployment_target = '12.0'
    s.vendored_frameworks = 'adapter-max/PlaygapMaxAdapter.xcframework'

    s.dependency 'Playgap', '>= 6.2.1'
    s.dependency 'AppLovinSDK'

    s.requires_arc = true
    s.static_framework = true
end
