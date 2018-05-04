# swift-skeleton

## Source layout
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

## build working
```
$ swift build
Compile Swift Module 'SwiftSkeleton' (1 sources)
Compile Swift Module 'SwiftSkeletonExe' (1 sources)
Linking ./.build/x86_64-unknown-linux/debug/SwiftSkeletonExe
```

## run working
```
$ swift run
main.swift: Hello, World!
```

## test working
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

## lldb **not working**
```
# once upon a time this was needed?
export C_INCLUDE_PATH=/opt/swift-4.1.1-RELEASE-ubuntu16.04/usr/lib/swift/clang/include/
export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH

$ lldb .build/debug/SwiftSkeletonExe
(lldb) target create ".build/debug/SwiftSkeletonExe"
Current executable set to '.build/debug/SwiftSkeletonExe' (x86_64).
(lldb) breakpoint set -f SwiftSkeleton.swift -l 7
Breakpoint 1: where = SwiftSkeletonExe`SwiftSkeleton.swift_skeleton.init() -> SwiftSkeleton.swift_skeleton + 4 at SwiftSkeleton.swift:7, address = 0x0000000000001224
(lldb) run
Process 23966 launched: '/work/swift-skeleton/.build/debug/SwiftSkeletonExe' (x86_64)
Process 23966 stopped
* thread #1, name = 'SwiftSkeletonEx', stop reason = breakpoint 1.1
    frame #0: 0x0000555555555224 SwiftSkeletonExe`swift_skeleton.init() at SwiftSkeleton.swift:7
   4   	    public var text: String
   5
   6   	    public init() {
-> 7   	        text = "Hello, World!"
   8   	    }
   9   	}
Target 0: (SwiftSkeletonExe) stopped.
(lldb) bt
* thread #1, name = 'SwiftSkeletonEx', stop reason = breakpoint 1.1
  * frame #0: 0x0000555555555224 SwiftSkeletonExe`swift_skeleton.init() at SwiftSkeleton.swift:7
    frame #1: 0x00005555555557e7 SwiftSkeletonExe`main at main.swift:4
    frame #2: 0x00007ffff5d6f830 libc.so.6`__libc_start_main(main=(SwiftSkeletonExe`main at main.swift), argc=1, argv=0x00007fffffffdec8, init=<unavailable>, fini=<unavailable>, rtld_fini=<unavailable>, stack_end=0x00007fffffffdeb8) at libc-start.c:291
    frame #3: 0x0000555555554ea9 SwiftSkeletonExe`_start + 41
(lldb) frame variable
self = <could not resolve type>
(lldb) p text
warning: Swift error in module SwiftSkeletonExe.
Debug info from this module will be unavailable in the debugger.

error: in auto-import:
failed to get module 'SwiftSkeleton' from AST context
```

Note: if does work if you comment out the `import Foundation` in `SwiftSkeleton.swift`.

More info: [SR-7388](https://bugs.swift.org/browse/SR-7388)
