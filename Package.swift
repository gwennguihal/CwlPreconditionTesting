import PackageDescription

let package = Package(
	name: "CwlPreconditionTesting",
	targets: [
		Target(name: "CwlPreconditionTesting", dependencies: [
			"CwlMachBadInstructionHandler"
		]),
		Target(name: "CwlMachBadInstructionHandler")
	],
	dependencies: [
		.Package(url: "https://github.com/mattgallagher/CwlCatchException.git", majorVersion: 1),
	],
	exclude: [
		"Sources/CwlPreconditionTesting/Mach/CwlPreconditionTesting.h",
		"Sources/CwlPreconditionTesting/Posix/CwlPreconditionTesting.h",
		"Sources/CwlPreconditionTesting/CwlCatchBadInstructionPosix.swift",
	]
)
