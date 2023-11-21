Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '1.0.6'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/1.0.6/Playgap.xcframework.zip",
        sha256: "a75ccfb249edc7742ff3c019e53c56cb2f30867a2d444a6020440883fcfac0bb"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end