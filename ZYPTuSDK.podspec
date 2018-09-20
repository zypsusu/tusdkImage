Pod::Spec.new do |s|
  s.name                = 'ZYPTuSDK'
  s.version             = '1.0.1'
  s.summary             = 'ZYPTuSDK for iOS'
  s.homepage            = 'https://github.com/zypsusu/tusdkImage'
  s.license             = { :type => 'Commercial', :text => '© 2014–2018' }
  s.author              = { 'TuSDK Team' => 'support@tusdk.com' }
  s.platform            = :ios, '6.0'
  s.source              = { :git => 'git@github.com:zypsusu/tusdkImage.git', :tag => '1.0.1' }
  s.requires_arc        = true


  s.subspec 'ImageGeeV1' do |i|
    i.vendored_frameworks = 'TuSDKGeeV1.framework'
    i.resources           = 'Localization/*.lproj'
  end

  s.subspec 'ImageGeeV2' do |i|
    i.vendored_frameworks = 'TuSDKGeeV2.framework'
    i.resources           = 'Localization/*.lproj'
  end

  s.subspec 'Core' do |c|
    c.vendored_frameworks = 'TuSDK.framework'
  end

  

end
