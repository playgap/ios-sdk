Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '5.3.2'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/5.3.2/Playgap.xcframework.zip",
        sha256: "c63e568d1f26fd3e1a844001e79a2dd45f4c1000358483b76729d376bc5922a0"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end