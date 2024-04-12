Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '1.2.1'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/1.2.1/Playgap.xcframework.zip",
        sha256: "46d97ce3ced3324fab0bd4355382e9bcedc1d68f8f6b458eb1d5e90e571b5aaa"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end