Pod::Spec.new do |spec|
  spec.name = "KituraContracts"
  spec.version = "2.0.1"

  spec.summary = "A library containing type definitions shared by client and server Kitura code."
  spec.homepage = "https://github.com/Kitura/KituraContracts"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE" }

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.0"

  spec.source = { :git => "https://github.com/Kitura/KituraContracts.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "KituraLoggerAPI", "~> 2.0"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
