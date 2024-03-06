Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '1.1.3'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/1.1.3/Playgap.xcframework.zip",
        sha256: "a22de1fdf6570749fe5aa506fbc79fe7630142f1c247c867857e1a6b926ec61a"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end