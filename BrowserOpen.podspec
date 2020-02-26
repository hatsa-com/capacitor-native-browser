
  Pod::Spec.new do |s|
    s.name = 'BrowserOpen'
    s.version = '0.0.1'
    s.summary = 'Opens native external browser'
    s.license = 'MIT'
    s.homepage = 'https://github.com/hatsa-com/capacitor-native-browser'
    s.author = 'Hatsa'
    s.source = { :git => 'https://github.com/hatsa-com/capacitor-native-browser', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end