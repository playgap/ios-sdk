Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '1.0.3'
    s.summary       = 'Playgap iOS SDK'

    s.description   = <<-DESC
    Playgap allows you monetise your offline gameplay.
    DESC

    s.homepage      = 'https://www.playgap.io'
    s.license       = { :type => 'Proprietary', :text => 'Copyright 2023 Playgap Ltd. All rights reserved.' }
    s.author        = { 'Andrei' => 'andrei@playgap.io' }
    s.requires_arc  = true
    s.platform      = :ios
    s.source        = { 
        http: "https://github.com/playgap/ios-sdk/releases/download/1.0.3/Playgap.xcframework.zip",
        sha256: "7c5db13d13653f5ce6e6974ff51418216410cdfa3859a5e80f850bb830a74b29"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end