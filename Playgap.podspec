Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '4.1.0'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/4.1.0/Playgap.xcframework.zip",
        sha256: "eba6399f283810f5f71ac24ee672c6ba8d24e792b1b50cd7842294f43c5da7ea"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end