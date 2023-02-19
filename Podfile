install! "cocoapods"

ensure_bundler! "~> 2.4"

use_modular_headers!

source "https://cdn.cocoapods.org/"

workspace "Cat2Cat"

platform :osx, "10.9"

target "Cat2Cat" do
	pod "BRLOptionParser", "~> 0.3"
	pod "VOKEmbeddedTemplateTools", "~> 0.1", :modular_headers => false
	pod "zipzap", "8.0.3", :modular_headers => false
end

post_install do |installer|
	installer.generated_projects.each do |generated_project|
		generated_project.build_configurations.each do |config|
			config.build_settings["MACOSX_DEPLOYMENT_TARGET"] = "$(RECOMMENDED_MACOSX_DEPLOYMENT_TARGET)"
		end

		generated_project.targets.each do |target|
			target.build_configurations.each do |config|
				config.build_settings["MACOSX_DEPLOYMENT_TARGET"] = "$(RECOMMENDED_MACOSX_DEPLOYMENT_TARGET)"
			end
		end
	end
end
