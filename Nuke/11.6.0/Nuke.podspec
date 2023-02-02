Pod::Spec.new do |spec|
  spec.name = "Nuke"
  spec.version = "11.6.0"

  spec.summary = "Nuke: Image Loading System"
  spec.homepage = "https://kean.blog/nuke/home"
  spec.documentation_url = "https://kean-docs.github.io/nuke/documentation/nuke/"
  spec.author = "Alexander Grebenyuk"
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.tvos.deployment_target = "13.0"
  spec.watchos.deployment_target = "6.0"

  spec.swift_versions = "5.6"

  spec.source = { :git => "https://github.com/kean/Nuke.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.name}/**/*.swift"
end
