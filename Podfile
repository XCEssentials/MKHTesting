projectName = 'MKHTesting'

platform :ios, '8.0'

workspace projectName

use_frameworks!

#===

def sharedPods

	pod 'MKHRequirement', :git => 'https://github.com/maximkhatskevich/MKHRequirement.git'

end

#===

target projectName do

	project projectName

	#===

	sharedPods

end

target projectName + 'Tst' do

	project projectName

	#===

	sharedPods

end
