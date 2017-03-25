Pod::Spec.new do |s|

  s.name                      = 'MKHTesting'
  s.version                   = '1.0.0'
  s.summary                   = 'A more expressive and readable way to describe expectations in Xcode unit tests.'
  s.homepage                  = 'https://github.com/maximkhatskevich/#{s.name}'
  s.license                   = { :type => 'MIT', :file => 'LICENSE' }
  s.author                    = { 'Maxim Khatskevich' => 'maxim@khatskevi.ch' }
  s.ios.deployment_target     = '8.0'
  s.source                    = { :git => '#{s.homepage}.git', :tag => '#{s.version}' }
  
  s.requires_arc              = true
  s.social_media_url          = 'http://www.linkedin.com/in/maximkhatskevich'

  s.source_files              = 'Src/**/*.swift'

  #===

  # http://stackoverflow.com/a/35102636

  s.weak_framework            = 'XCTest'
  s.dependency                  'MKHRequirement'

  s.pod_target_xcconfig = {

    'OTHER_LDFLAGS' => '-weak-lswiftXCTest',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"'

  }

end
