v="$1"
p="$(pwd)"

cd /app
cordova create "android-$v" "com.example.hello$v" "HelloWorld$v"
cd "android-$v"
cordova platform add "android@$v"
cordova plugin add "$p"
cordova build android --release
cd "$p"
