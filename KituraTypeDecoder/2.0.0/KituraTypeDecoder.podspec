Pod::Spec.new do |spec|
  spec.name = "KituraTypeDecoder"
  spec.version = "2.0.0"

  spec.summary = "A Swift library to allow the runtime inspection of Swift language native and complex types."
  spec.homepage = "https://github.com/Kitura/TypeDecoder"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.module_name = "TypeDecoder"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.0"

  spec.source = { :git => "https://github.com/Kitura/TypeDecoder.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.test_spec "#{spec.module_name}Tests" do |test|
    test.source_files = "Tests/#{spec.module_name}Tests/**/*.swift"
  end
end
