Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '5.4.3'
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
        http: "https://github.com/playgap/ios-sdk/releases/download/5.4.3/Playgap.xcframework.zip",
        sha256: "3efd27336067dea2e1e72dc7d67e0cfd8c1d1e11e4ea78e99111983e789eb537"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end