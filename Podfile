repoName = 'Testing'
projName = 'Main'

#===

platform :ios, '8.0'

workspace repoName

use_frameworks!

#===

def sharedPods

	#

end

#===

target 'Fwk' do

	project projName

	#===

	sharedPods

	#===

	pod 'XCERequirement', '~> 1.5'

end

target 'Tests' do

	project projName
    
    #===

	sharedPods

end
