Pod::Spec.new do |s|
  s.name                = 'ZYPTuSDK'
  s.version             = '1.0.9'
  s.summary             = 'ZYPTuSDK for iOS'
  s.homepage            = 'https://github.com/zypsusu/tusdkImage'
  s.license             = { :type => 'Commercial', :text => '© 2014–2018' }
  s.author              = { 'TuSDK Team' => 'support@tusdk.com' }
  s.platform            = :ios, '6.0'
  s.source              = { :git => 'https://github.com/zypsusu/tusdkImage.git', :tag => '1.0.9' }
  s.requires_arc        = true
  # s.resources           = 'Localization/*.lproj'
  # s.libraries           = 'c++.1'
  s.frameworks = 'AVFoundation', 'CoreGraphics', 'Security', 'SystemConfiguration', 'Accelerate'

  s.subspec 'ImageGeeV1' do |sp|
    sp.vendored_frameworks = 'TuSDKGeeV1.framework'
    sp.resources           = 'Localization/*.lproj'
  end

  s.subspec 'ImageGeeV2' do |i|
    i.vendored_frameworks = 'TuSDKGeeV2.framework'
    i.resources           = 'Localization/*.lproj'
  end

  s.subspec 'Core' do |c|
    c.vendored_frameworks = 'TuSDK.framework'
  end

  

end
