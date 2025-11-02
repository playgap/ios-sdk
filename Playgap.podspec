Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '5.0.1'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/5.0.1/Playgap.xcframework.zip",
        sha256: "e1cd4192ffee6aec92b534c663a538378432c9a1fe39f945f97024b0e7188d79"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end