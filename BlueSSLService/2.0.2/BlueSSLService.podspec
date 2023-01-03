Pod::Spec.new do |spec|
  spec.name = "BlueSSLService"
  spec.version = "2.0.2"

  spec.summary = "SSL/TLS Add-in for BlueSocket using Secure Transport and OpenSSL."
  spec.homepage = "https://github.com/Kitura/BlueSSLService"
  spec.author = "Kitura Project"
  spec.license = { :type => "Apache 2.0", :file => "LICENSE" }

  spec.module_name = "SSLService"

  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"

  spec.swift_versions = "5.0"

  spec.source = { :git => "https://github.com/Kitura/BlueSSLService.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/#{spec.module_name}/**/*.swift"

  spec.dependency "BlueSocket", "~> 2.0"
end
