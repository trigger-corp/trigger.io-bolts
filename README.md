## Compiling

    # checkout fork
    git clone https://github.com/trigger-corp/Bolts-ObjC.git Bolts-ObjC.git
    cd Bolts-ObjC.git
    git submodule update --init --recursive

    # build platforms
    xcodebuild -target "Bolts-iOS" -configuration "Release" -arch armv7 -arch armv7s -arch arm64 -sdk iphoneos
    xcodebuild -target "Bolts-iOS" -configuration "Release" -arch x86_64 -sdk iphonesimulator

    # create fat binary
    lipo -create -output build/Release-iphoneos/Bolts.framework/Bolts \
      ./build/Release-iphoneos/Bolts.framework/Bolts \
      ./build/Release-iphonesimulator/Bolts.framework/Bolts

    # check fat binary
    lipo -info /Users/antoine/Projects/modules.deps/Bolts-ObjC.git/build/Release-iphoneos/Bolts.framework/Bolts
