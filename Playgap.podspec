Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '6.2.2'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/6.2.2/Playgap.xcframework.zip",
        sha256: "6a6ba6a3cf1a3de7d0365ec437479a9cf1e1b833e22b7aaf9ce18ad4da8cab82"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end