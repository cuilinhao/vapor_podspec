Pod::Spec.new do |spec|
  spec.name = "Nuke.xcframework"
  spec.version = "11.6.0"

  spec.summary = "Nuke: Image Loading System"
  spec.homepage = "https://kean.blog/nuke/home"
  spec.author = "Alexander Grebenyuk"
  spec.license = { :type => "MIT" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.tvos.deployment_target = "13.0"
  spec.watchos.deployment_target = "6.0"

  spec.swift_versions = "5.6"

  spec.source = { :http => "https://github.com/kean/Nuke/releases/download/#{spec.version}/nuke-xcframeworks-all-platforms.zip" }
  spec.vendored_frameworks = [
    "Nuke.xcframework",
    "NukeUI.xcframework",
    "NukeExtensions.xcframework",
  ]
end
