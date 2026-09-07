Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '6.2.1'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/6.2.1/Playgap.xcframework.zip",
        sha256: "6553058dee020e3c0b9a734cdea1803cf9c9fb0f42e2fb093eaa88eaa18db747"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end