# swift-skeleton

Notes:

```
$ tree
.
├── LICENSE
├── Package.swift
├── README.md
├── Sources
│   ├── SwiftSkeleton
│   │   └── SwiftSkeleton.swift
│   └── SwiftSkeletonExe
│       └── main.swift
└── Tests
    ├── LinuxMain.swift
    └── SwiftSkeletonTests
        ├── SwiftSkeletonTests.swift
        └── XCTestManifests.swift

5 directories, 8 files
```

```
$ swift build
Compile Swift Module 'SwiftSkeleton' (1 sources)
Compile Swift Module 'SwiftSkeletonExe' (1 sources)
Linking ./.build/x86_64-unknown-linux/debug/SwiftSkeletonExe
```

```
$ swift run
main.swift: Hello, World!
```

```
$ swift test
Compile Swift Module 'SwiftSkeletonTests' (2 sources)
Compile Swift Module 'SwiftSkeletonPackageTests' (1 sources)
Linking ./.build/x86_64-unknown-linux/debug/SwiftSkeletonPackageTests.xctest
Test Suite 'All tests' started at 2018-05-04 22:59:57.542
Test Suite 'debug.xctest' started at 2018-05-04 22:59:57.543
Test Suite 'SwiftSkeletonTests' started at 2018-05-04 22:59:57.543
Test Case 'SwiftSkeletonTests.testExample' started at 2018-05-04 22:59:57.543
Test Case 'SwiftSkeletonTests.testExample' passed (0.0 seconds)
Test Suite 'SwiftSkeletonTests' passed at 2018-05-04 22:59:57.543
	 Executed 1 test, with 0 failures (0 unexpected) in 0.0 (0.0) seconds
Test Suite 'debug.xctest' passed at 2018-05-04 22:59:57.543
	 Executed 1 test, with 0 failures (0 unexpected) in 0.0 (0.0) seconds
Test Suite 'All tests' passed at 2018-05-04 22:59:57.543
	 Executed 1 test, with 0 failures (0 unexpected) in 0.0 (0.0) seconds
```
