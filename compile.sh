apt update
if javac -version &> /dev/null
then
    echo "JDK 17 already installed"
else
    echo "Install openjdk 17"
    apt install openjdk-17
fi
if ecj -version &> /dev/null
then
    echo "ECJ already installed"
else
    echo "Install ECJ"
    apt install -y ecj
fi
ecj -source 1.3 -target 1.3 -bootclasspath lib/cldcapi11.jar:lib/midpapi20.jar AMIDlet.java
mkdir -p compiled_classes preverified_classes
mv AMIDlet.class compiled_classes/
java -cp proguard.jar proguard.ProGuard @preverify.pro
cd preverified_classes
jar cvfm ../HelloApp.jar ../MANIFEST.MF AMIDlet.class
