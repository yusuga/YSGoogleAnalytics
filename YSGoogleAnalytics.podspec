Pod::Spec.new do |s|
  s.name = 'YSGoogleAnalytics'
  s.version = '0.0.1'
  s.summary = 'GoogleAnalytics(v3) helper.'
  s.homepage = 'https://github.com/yusuga/YSGoogleAnalytics'
  s.license = 'MIT'
  s.author = 'Yu Sugawara'
  s.source = { :git => 'https://github.com/yusuga/YSGoogleAnalytics.git', :tag => s.version.to_s }
  s.platform = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source_files = 'Classes/YSGoogleAnalytics/*.{h,m}'
  s.requires_arc = true
  
  s.dependency 'Google/Analytics'
end