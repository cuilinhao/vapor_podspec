Pod::Spec.new do |spec|
  spec.name = "PulseLogHandler"
  spec.version = "3.1.0"

  spec.summary = "Swift Log Extension for Pulse"
  spec.homepage = "https://kean.blog/pulse/home"
  spec.documentation_url = "https://kean-docs.github.io/pulseloghandler/documentation/pulseloghandler/"
  spec.author = "Alexander Grebenyuk"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "14.0"
  spec.osx.deployment_target = "12.0"
  spec.tvos.deployment_target = "14.0"
  spec.watchos.deployment_target = "8.0"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/kean/PulseLogHandler.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"

  spec.dependency "Pulse", "~> 3.1"

  spec.dependency "Logging", "~> 1.2"

  spec.test_spec "#{spec.name}Tests" do |test|
    test.source_files = "Tests/#{spec.name}Tests/**/*.swift"
  end
end
