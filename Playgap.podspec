Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '4.0.0'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/4.0.0/Playgap.xcframework.zip",
        sha256: "964b17841a57aea50b96632d176f85990729fff2b65a759cc4cbd14e0a74289c"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end