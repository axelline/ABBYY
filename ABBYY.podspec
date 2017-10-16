Pod::Spec.new do |s|
  s.name         = 'AbbyyRtrSDK'
  s.version      = '1.0.7.56'
  spec.license   = { :type => 'ABBYY', :file => 'ABBYY' }
  s.homepage     = 'http://www.rtrsdk.com'
  s.authors      = { 'ABBYY SDK' => 'sdk@abbyy.com' }
  s.summary      = 'ABBYY SDK'
  s.description  = 'ABBYY SDK Pod for Mobilu'
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/axelline/ABBYY.git', :tag => s.version.to_s }

  s.resources 		= 'assets/Dictionaries', 'assets/Patterns'
  s.vendored_framework	= 'AbbyyRtrSDK.framework'

  s.library       = 'c++'
  s.xcconfig      = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ABBYY/**"',
		      'LD_RUNPATH_SEARCH_PATHS' => '"$(PODS_ROOT)/ABBYY"' }
  s.frameworks    = 'Foundation'

  s.requires_arc = true
  spec.pod_target_xcconfig = {

    'OTHER_LDFLAGS' => '-lc++',

    'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/#{spec.name}/**'

  }
end
