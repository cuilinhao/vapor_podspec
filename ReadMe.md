# Podspecs

`source "https://github.com/VaslD/Podspecs.git"`

Test cases are included as test specs.

## Apple & Swift on Server

- `pod "Algorithms"`
- `pod "APNSwift"`
- `pod "ArgumentParser"`
- `pod "AsyncHTTPClient"` (`CAsyncHTTPClient`)
- `pod "Atomics"`
- `pod "Backtrace"` (`CBacktrace`)
- `pod "Collections"` (`DequeModule`, `OrderedCollections`)
- `pod "Crypto"` or `pod "Crypto/BoringSSL"` (`CCryptoBoringSSL`)
- `pod "IsPower"`, `import SE0288_IsPower`
- `pod "Logging"`
- `pod "Markdown"` (`CMarkGFM`, `CMarkGFMExtensions`)
- `pod "Metrics"` (`CoreMetrics`, `MetricsTestKit`)
- `pod "MQTTNIO"`
- `pod "NIO"` (`NIOCore`, `NIOEmbedded`, `NIOPOSIX`, `NIOHTTP1`, `NIOTLS`, `NIOWebSocket`)
- `pod "NIOHTTP2"` (`NIOHPACK`)
- `pod "NIOSSH"`
- `pod "NIOSSL"` (`CNIOBoringSSL`)
- `pod "NIOExtras"` (`NIOHTTPCompression`, `NIOSOCKS`)
- `pod "NIOTransportServices"`
- `pod "Numerics"` (`RealModule`, `ComplexModule`)
- `pod "RangeSet"`, `import SE0270_RangeSet`
- `pod "StructuredFieldValues"` (`RawStructuredFieldValues`)
- `pod "SwiftProtobuf"`
- `pod "SwiftSyntax"` (`SwiftSyntaxBuilder`, `SwiftSyntaxParser`)
- `pod "SymbolKit"`
- `pod "System"`, `import SystemPackage`

## Vapor

- `pod "AsyncKit"`
- `pod "ConsoleKit"`
- `pod "JWTKit"` (`CJWTKitBoringSSL`)
- `pod "MultipartKit"`
- `pod "RoutingKit"`
- `pod "Vapor"` (`CVaporBcrypt`, `CVaporURLParser`)
- `pod "WebSocketKit"`

## Kitura

- `pod "BlueSocket"`, `import Socket`
- `pod "BlueSSLService"`, `import SSLService`
- `pod "KituraNIO"`, `import KituraNet`
- `pod "Kitura"`

## Nuke

- `pod "Nuke"`
- `pod "NukeUI"`
- `pod "NukeExtensions"`

Nuke is also distributed as precompiled binary frameworks:

- `pod "Nuke.xcframework"` ( `Nuke`, `NukeUI`, `NukeExtensions`)

## Pulse

- `pod "Pulse"`
- `pod "PulseUI"`
- `pod "PulseLogHandler"`

Pulse is also distributed as precompiled binary frameworks:

- `pod "Pulse.xcframework"` (`Pulse`, `PulseUI`)

For iOS 13, macOS 11, tvOS 13, and watchOS 7, use Pulse 2:

- `pod "Pulse", "~> 2.0"`
- `pod "PulseUI", "~> 2.0"`

