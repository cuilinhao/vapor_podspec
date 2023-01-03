Pod::Spec.new do |spec|
  spec.name = "ConsoleKit"
  spec.version = "4.5.0"

  spec.summary = "APIs for creating interactive CLI tools."
  spec.homepage = "https://github.com/vapor/console-kit"
  spec.author = "Vapor"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_versions = "5.4"

  spec.source = { :git => "https://github.com/vapor/console-kit.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Logging", "~> 1.0"

  spec.test_spec "ConsoleKitTests" do |test|
    test.source_files = "Tests/ConsoleKitTests/**/*.swift"
  end

  spec.test_spec "AsyncConsoleKitTests" do |test|
    test.source_files = "Tests/AsyncConsoleKitTests/**/*.swift"
  end
end
