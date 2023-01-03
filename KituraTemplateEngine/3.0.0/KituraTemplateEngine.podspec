Pod::Spec.new do |spec|
  spec.name = "KituraTemplateEngine"
  spec.version = "3.0.0"

  spec.summary = "Kitura Template Engine protocol."
  spec.homepage = "https://github.com/Kitura/Kitura-TemplateEngine"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.0"

  spec.source = { :git => "https://github.com/Kitura/Kitura-TemplateEngine.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
end
