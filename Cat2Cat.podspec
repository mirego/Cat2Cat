Pod::Spec.new do |s|
  s.name         = "Cat2Cat"
  s.version      = "3.0.1"
  s.summary      = "Cat2Cat - Asset Catalog -> Image Category"
  s.description  = <<-DESC
                    A utility to take AssetCatalogs and turn them into UIImage or NSImage categories.

                    * Creates category methods prefixed by ac_ to prevent naming collisions
                    * Can create categories for UIImage, NSImage, or both.
                    * Pod includes the compiled binary and a sample build script.
                   DESC
  s.homepage     = "https://github.com/vokal/Cat2Cat"
  s.license      = "MIT"
  s.authors 	 = { "Ellen Shapiro" => "http://designatednerd.com", "Bryan Luby" => "http://www.vokal.io" }
  s.source       = { :git => "https://github.com/vokal/Cat2Cat.git", :tag => s.version.to_s }


  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "10.13"
  s.requires_arc = true

  s.preserve_paths = "CocoaPod/*"
end
