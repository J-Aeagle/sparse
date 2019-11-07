#!/usr/bin/env sh

git clone -n https://github.com/eagleinvsys-sd/sd-core-17
cd sd-core-17
git config lfs.url https://<USERNAME>:<ENCRYPTED PASSWORD>@inno-artifactory.eagleinvsys.com/artifactory/api/lfs/sd-core-17-lfs
git config core.sparseCheckout true
echo /.gitattributes >> .git/info/sparse-checkout
echo /.gitignore >> .git/info/sparse-checkout
echo /.lfsconfig >> .git/info/sparse-checkout
# echo /3rdparty/src/boostlib/ >> .git/info/sparse-checkout
# echo /3rdparty/src/fmt/ >> .git/info/sparse-checkout
# echo /3rdparty/src/googletest/ >> .git/info/sparse-checkout
# echo /3rdparty/src/jsoncpp11/ >> .git/info/sparse-checkout
# echo /3rdparty/src/lexertl/ >> .git/info/sparse-checkout
# echo /3rdparty/src/lua/ >> .git/info/sparse-checkout
# echo /3rdparty/src/parsertl/ >> .git/info/sparse-checkout
# echo /3rdparty/src/pugixml/ >> .git/info/sparse-checkout
# echo /3rdparty/src/sqlite/ >> .git/info/sparse-checkout
# echo /eagle/estar/tpe/dynamic/dat/accounting/ >> .git/info/sparse-checkout
# echo /eagle/estar/tpe/dynamic/dat/eagle/star/ >> .git/info/sparse-checkout
# echo /eagle/estar/tpe/dynamic/dat/nxgpdc/portfolio desk/ >> .git/info/sparse-checkout
# echo /eagle/estar/tpe/dynamic/dat/nxgrdc/reference desk/ >> .git/info/sparse-checkout
# echo /eagle/estar/tpe/dynamic/profiledat/ >> .git/info/sparse-checkout
# echo /eagle/estar/tpe/dynamic/resultprofiledll/ >> .git/info/sparse-checkout
# echo /EDM/ >> .git/info/sparse-checkout
# echo /src/pace/ >> .git/info/sparse-checkout
# echo /src/reportprofiledlls/ >> .git/info/sparse-checkout
# echo /src/shared/common/ >> .git/info/sparse-checkout
# echo /src/shared/eagleqclient/ >> .git/info/sparse-checkout
# echo /src/shared/liblogger/ >> .git/info/sparse-checkout
# echo /src/shared/util/ >> .git/info/sparse-checkout
# echo /src/shared/versioninfo/ >> .git/info/sparse-checkout
echo /src/star_engine/ >> .git/info/sparse-checkout
git checkout HEAD
