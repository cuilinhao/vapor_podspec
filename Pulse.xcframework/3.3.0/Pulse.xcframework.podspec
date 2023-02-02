Pod::Spec.new do |spec|
  spec.name = "Pulse.xcframework"
  spec.version = "3.3.0"

  spec.summary = "Pulse: Network Logger for Apple Platforms"
  spec.homepage = "https://kean.blog/pulse/home"
  spec.author = "Alexander Grebenyuk"
  spec.license = { :type => "MIT" }

  spec.ios.deployment_target = "14.0"
  spec.osx.deployment_target = "12.0"
  spec.tvos.deployment_target = "14.0"
  spec.watchos.deployment_target = "8.0"

  spec.swift_versions = "5.6"

  spec.source = { :http => "https://github.com/kean/Pulse/releases/download/#{spec.version}/pulse-xcframeworks-all-platforms.zip" }
  spec.vendored_frameworks = [
    "Pulse.xcframework",
    "PulseUI.xcframework",
  ]
end
