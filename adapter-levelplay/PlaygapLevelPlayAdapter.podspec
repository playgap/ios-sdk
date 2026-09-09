Pod::Spec.new do |s|
    s.name             = 'PlaygapLevelPlayAdapter'
    s.version          = '1.0.0'
    s.summary          = 'Unity LevelPlay (ironSource) mediation adapter for the Playgap SDK'
    s.description      = 'Bridges Playgap ad mediation (PlaygapSdk) to the Unity LevelPlay (ironSource) iOS SDK.'
    s.homepage         = 'https://playgap.io'
    s.license          = { :type => 'Proprietary', :text => "Copyright 2026 Playgap Ltd. All rights reserved." }
    s.author           = { 'Andrei' => 'andrei@playgap.io' }
    s.source           = { :git => 'https://github.com/playgap/ios-sdk.git', :tag => "adapter-levelplay/#{s.version}" }

    s.ios.deployment_target = '12.0'
    s.vendored_frameworks = 'adapter-levelplay/PlaygapLevelPlayAdapter.xcframework'

    s.dependency 'Playgap', '>= 6.2.1'
    s.dependency 'IronSourceSDK'

    s.requires_arc = true
    s.static_framework = true
end
