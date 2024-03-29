// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FDLibrary",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FDLibrary",
            targets: ["FDLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.12.0")),
        .package(url: "https://github.com/alibaba/HandyJSON.git", .upToNextMajor(from: "5.0.2")),
        .package(url: "https://github.com/malcommac/SwiftDate.git", .upToNextMajor(from: "6.3.1")),
        .package(url: "https://github.com/SwiftKickMobile/SwiftMessages.git", .upToNextMajor(from: "9.0.6")),
        .package(name: "Toast", url: "https://github.com/scalessec/Toast-Swift.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.4")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0")),
        .package(url: "https://github.com/AliSoftware/OHHTTPStubs.git", .upToNextMajor(from: "9.1.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxAlamofire.git", .upToNextMajor(from: "6.1.2")),
        .package(url: "https://github.com/CoderMJLee/MJRefresh.git", .upToNextMajor(from: "3.7.2")),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "5.0.2")),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture.git", .upToNextMajor(from: "4.0.4")),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", .upToNextMajor(from: "6.5.8"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FDLibrary",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "HandyJSON", package: "HandyJSON"),
                .product(name: "SwiftDate", package: "SwiftDate"),
                .product(name: "SwiftMessages", package: "SwiftMessages"),
                .product(name: "Toast", package: "Toast"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
                .product(name: "RxBlocking", package: "RxSwift"),
                .product(name: "OHHTTPStubs", package: "OHHTTPStubs"),
                .product(name: "OHHTTPStubsSwift", package: "OHHTTPStubs"),
                .product(name: "RxAlamofire", package: "RxAlamofire"),
                .product(name: "MJRefresh", package: "MJRefresh"),
                .product(name: "RxDataSources", package: "RxDataSources"),
                .product(name: "RxGesture", package: "RxGesture"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
            ]),
        .testTarget(
            name: "FDLibraryTests",
            dependencies: ["FDLibrary"]),
    ],
    swiftLanguageVersions: [.v5]
)
