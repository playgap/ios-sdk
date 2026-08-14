Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '6.1.4'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/6.1.4/Playgap.xcframework.zip",
        sha256: "9d2bafdec687062c6a12c509cb00ecd8eb5f7efc08c5e9c109b362cbc009daca"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end