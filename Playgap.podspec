Pod::Spec.new do |s|
    s.name          = 'Playgap'
    s.version       = '2.1.2'
    s.summary       = 'Playgap iOS SDK'

    s.description   = <<-DESC
    Playgap allows you monetise your offline gameplay.
    DESC

    s.homepage      = 'https://playgap.io'
    s.license       = { :type => 'Proprietary', :text => 'Copyright 2023 Playgap Ltd. All rights reserved.' }
    s.author        = { 'Andrei' => 'andrei@playgap.io' }
    s.requires_arc  = true
    s.platform      = :ios
    s.source        = { 
        http: "https://github.com/playgap/ios-sdk/releases/download/2.1.2/Playgap.xcframework.zip",
        sha256: "16755676b495e94c7c4b5ea463c06948c790105dea626026fb8edcd82f1aeebf"
    }
    s.ios.vendored_frameworks = 'Playgap.xcframework'

    s.ios.deployment_target = '12.0'
end