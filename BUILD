load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

swift_library(
    name = "App_swift_library",
    module_name = "App",
    srcs = glob(["App/*.swift"]),
)

apple_bundle_version(
    name = "App_apple_bundle_version",
    build_version = "1.0",
)

ios_application(
    name = "App",
    bundle_name = "App",
    app_icons = glob(["Assets.xcassets/**"]),
    bundle_id = "com.restermans.App",
    families = ["iphone"],
    infoplists = ["App/Info.plist"],
    minimum_os_version = "17.0",
    deps = [":App_swift_library"],
    resources = glob(["App/*.lproj/**"]),
    version = ":App_apple_bundle_version",
)