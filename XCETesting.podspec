projName = 'Testing'
projSummary = 'A more expressive and readable way to describe expectations in Xcode unit tests.'
companyPrefix = 'XCE'
companyName = 'XCEssentials'
companyGitHubAccount = 'https://github.com/' + companyName
companyGitHubPage = 'https://' + companyName + '.github.io'

#===

Pod::Spec.new do |s|

  s.name                      = companyPrefix + projName
  s.summary                   = projSummary
  s.version                   = '1.0.1'
  s.homepage                  = companyGitHubPage + '/' + projName
  
  s.source                    = { :git => companyGitHubAccount + '/' + projName + '.git', :tag => s.version }
  s.source_files              = 'Src/**/*.swift'

  s.ios.deployment_target     = '8.0'
  s.requires_arc              = true

  s.dependency                  'XCERequirement', '~> 1.4'

  #===

  # http://stackoverflow.com/a/35102636

  s.weak_framework            = 'XCTest'
  
  s.pod_target_xcconfig = {

    'OTHER_LDFLAGS' => '-weak-lswiftXCTest',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"'

  }

  #===

  s.license                   = { :type => 'MIT', :file => 'LICENSE' }
  s.author                    = { 'Maxim Khatskevich' => 'maxim@khatskevi.ch' }

end
