## TWRP device tree for Samsung Galaxy J7 (2016)

Initialise source:
```xml
mkdir twrp && cd twrp && repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.1 && mkdir .repo/local_manifests/ && nano .repo/local_manifests/roomservice.xml
```
And add to roomservice.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
 <project name="j72016/twrp_device_samsung_j7xelte" path="device/samsung/j7xelte" remote="github" revision="android-9.0" />
</manifest>
```
Then to sync up:
```xml
repo sync --force-sync --no-clone-bundle --optimized-fetch --prune --no-tags -j4
```
Build:
```xml
. build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true && lunch omni_j7xelte-eng && mka recoveryimage
```
Done, happy flashing! :)
