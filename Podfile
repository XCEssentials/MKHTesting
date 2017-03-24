repoName = 'MKHTesting'
projectName = 'main'

platform :ios, '8.0'

workspace repoName

use_frameworks!

#===

def sharedPods

	pod 'MKHRequirement', :git => 'https://github.com/maximkhatskevich/MKHRequirement.git'

end

#===

target repoName do

	project projectName

	#===

	sharedPods

end

target 'Tests' do

	project projectName

	#===

	sharedPods

end
