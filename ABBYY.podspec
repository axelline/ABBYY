Pod::Spec.new do |s|
  s.name         = 'ABBYY'
  s.version      = '1.0.7.56'
  s.homepage     = 'https://www.abbyy.com/en-eu/mobile-ocr/iphone-ocr/'
  s.license      = 'proprietary'
  s.author       = { 'Mobilu' => 'team@mobilu.lu' }
  s.summary      = 'ABBYY SDK'
  s.description  = 'ABBYY SDK Pod for Mobilu'
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/axelline/ABBYY.git', :tag => s.version.to_s }

  s.resources     = 'assets/Dictionaries', 'assets/Patterns'
  s.vendored_framework  = 'AbbyyRtrSDK.framework'

  s.library       = 'c++'
  s.xcconfig      = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ABBYY/**"',
    'LD_RUNPATH_SEARCH_PATHS' => '"$(PODS_ROOT)/ABBYY"',
    'OTHER_LDFLAGS' => '-lc++',
    'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ABBYY/**'
  }
  s.frameworks    = 'CoreMedia'

  s.requires_arc = true
end
