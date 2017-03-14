projectName = 'MKHTesting'
projectFileName = 'main'

platform :ios, '8.0'

workspace projectName

use_frameworks!

#===

def sharedPods

	pod 'MKHRequirement', :git => 'https://github.com/maximkhatskevich/MKHRequirement.git'

end

#===

target projectName do

	project projectFileName

	#===

	sharedPods

end

target 'Tests' do

	project projectFileName

	#===

	sharedPods

end
