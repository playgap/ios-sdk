Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '6.3.1'
    s.summary       = 'Playgap iOS SDK'

    s.description   = <<-DESC
    Playgap allows you monetise your offline gameplay.
    DESC

    s.homepage      = 'https://playgap.io'
    s.license       = { :type => 'Proprietary', :text => "Copyright 2026 Playgap Ltd. All rights reserved." }
    s.author        = { 'Andrei' => 'andrei@playgap.io' }
    s.requires_arc  = true
    s.platform      = :ios
    s.source        = { 
        http: "https://github.com/playgap/ios-sdk/releases/download/6.3.1/Playgap.xcframework.zip",
        sha256: "e940caa3f4112955d56da256825b9b1cc7875f8a13826d32316cd678ae3c55a8"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '13.0'
end