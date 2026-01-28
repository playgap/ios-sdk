Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '5.0.6'
    s.summary       = 'Playgap iOS SDK'

    s.description   = <<-DESC
    Playgap allows you monetise your offline gameplay.
    DESC

    s.homepage      = 'https://playgap.io'
    s.license       = { :type => 'Proprietary', :text => 'Copyright 2024 Playgap Ltd. All rights reserved.' }
    s.author        = { 'Andrei' => 'andrei@playgap.io' }
    s.requires_arc  = true
    s.platform      = :ios
    s.source        = { 
        http: "https://github.com/playgap/ios-sdk/releases/download/5.0.6/Playgap.xcframework.zip",
        sha256: "c3abb0e423b6ac28c3462a2da86a46f0548375f5b30aa3f3d3d99ea8d2194ba8"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end