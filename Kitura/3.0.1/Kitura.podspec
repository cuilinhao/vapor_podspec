Pod::Spec.new do |spec|
  spec.name = "Kitura"
  spec.version = "3.0.1"

  spec.summary = "A Swift web framework and HTTP server."
  spec.homepage = "https://github.com/Kitura/Kitura"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE.txt" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.2"

  spec.source = { :git => "https://github.com/Kitura/Kitura.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "KituraNIO", "~> 3.1"
  spec.dependency "KituraTemplateEngine", "~> 3.0"
  spec.dependency "KituraContracts", "~> 2.0"
  spec.dependency "KituraTypeDecoder", "~> 2.0"
  spec.dependency "KituraLoggerAPI", "~> 2.0"
  spec.dependency "Logging", "< 2.0.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
    test.resources = [
      "Tests/#{spec.name}Tests/SSLConfig",
      "Tests/#{spec.name}Tests/TestStaticFileServer",
    ]
    test.pod_target_xcconfig = {
      "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "$(inherited) DISABLE_FASTCGI",
    }
  end
end
