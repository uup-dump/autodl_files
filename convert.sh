#!/bin/bash
scriptName="UUP Converter v0.5.3"
UUP_CONVERTER_SCRIPT=1

if [ -f `dirname $0`/convert_ve_plugin ]; then
  . `dirname $0`/convert_ve_plugin
fi

if [ -f `dirname $0`/convert_config_linux ]; then
  . `dirname $0`/convert_config_linux
else
  VIRTUAL_EDITIONS_LIST="CoreSingleLanguage Enterprise EnterpriseN Education \
  EducationN ProfessionalEducation ProfessionalEducationN \
  ProfessionalWorkstation ProfessionalWorkstationN ServerRdsh IoTEnterprise"
fi

editions='analogonecore
andromeda
cloude
clouden
core
corecountryspecific
coren
coresinglelanguage
coresystemserver
education
educationn
enterprise
enterpriseeval
enterpriseg
enterprisegn
enterprisen
enterpriseneval
enterprises
enterpriseseval
enterprisesn
enterprisesneval
iotuap
onecoreupdateos
professional
professionalcountryspecific
professionaleducation
professionaleducationn
professionaln
professionalsinglelanguage
professionalworkstation
professionalworkstationn
serverarm64
serverarm64core
serverazurecor
serverazurecorcore
serverazurenano
serverazurenanocore
servercloudstorage
servercloudstoragecore
serverdatacenter
serverdatacenteracor
serverdatacenteracorcore
serverdatacentercor
serverdatacentercorcore
serverdatacentercore
serverdatacentereval
serverdatacenterevalcor
serverdatacenterevalcorcore
serverdatacenterevalcore
serverdatacenternano
serverdatacenternanocore
serverhypercore
serverrdsh
serverrdshcore
serversolution
serversolutioncore
serverstandard
serverstandardacor
serverstandardacorcore
serverstandardcor
serverstandardcorcore
serverstandardcore
serverstandardeval
serverstandardevalcor
serverstandardevalcorcore
serverstandardevalcore
serverstandardnano
serverstandardnanocore
serverstoragestandard
serverstoragestandardcore
serverstoragestandardeval
serverstoragestandardevalcore
serverstorageworkgroup
serverstorageworkgroupcore
serverstorageworkgroupeval
serverstorageworkgroupevalcore
serverweb
serverwebcore
starter
startern'

bootSourcesList='sources/alert.gif
sources/api-ms-win-core-apiquery-l1-1-0.dll
sources/api-ms-win-downlevel-advapi32-l1-1-0.dll
sources/api-ms-win-downlevel-advapi32-l1-1-1.dll
sources/api-ms-win-downlevel-advapi32-l2-1-0.dll
sources/api-ms-win-downlevel-advapi32-l2-1-1.dll
sources/api-ms-win-downlevel-advapi32-l3-1-0.dll
sources/api-ms-win-downlevel-advapi32-l4-1-0.dll
sources/api-ms-win-downlevel-kernel32-l1-1-0.dll
sources/api-ms-win-downlevel-kernel32-l2-1-0.dll
sources/api-ms-win-downlevel-ole32-l1-1-0.dll
sources/api-ms-win-downlevel-ole32-l1-1-1.dll
sources/api-ms-win-downlevel-shlwapi-l1-1-0.dll
sources/api-ms-win-downlevel-shlwapi-l1-1-1.dll
sources/api-ms-win-downlevel-user32-l1-1-0.dll
sources/api-ms-win-downlevel-user32-l1-1-1.dll
sources/api-ms-win-downlevel-version-l1-1-0.dll
sources/appcompat.xsl
sources/appcompat_bidi.xsl
sources/appcompat_detailed_bidi_txt.xsl
sources/appcompat_detailed_txt.xsl
sources/appraiser.dll
sources/ARUNIMG.dll
sources/arunres.dll
sources/autorun.dll
sources/cmisetup.dll
sources/compatctrl.dll
sources/compatprovider.dll
sources/cryptosetup.dll
sources/diager.dll
sources/diagnostic.dll
sources/diagtrack.dll
sources/diagtrackrunner.exe
sources/dism.exe
sources/dismapi.dll
sources/dismcore.dll
sources/dismcoreps.dll
sources/dismprov.dll
sources/ext-ms-win-advapi32-encryptedfile-l1-1-0.dll
sources/folderprovider.dll
sources/hwcompat.dll
sources/hwcompat.txt
sources/hwexclude.txt
sources/idwbinfo.txt
sources/imagingprovider.dll
sources/inf/setup.cfg
sources/input.dll
sources/lang.ini
sources/locale.nls
sources/logprovider.dll
sources/MediaSetupUIMgr.dll
sources/ndiscompl.dll
sources/nlsbres.dll
sources/ntdsupg.dll
sources/offline.xml
sources/pnpibs.dll
sources/reagent.admx
sources/reagent.dll
sources/reagent.xml
sources/rollback.exe
sources/schema.dat
sources/segoeui.ttf
sources/setup.exe
sources/setupcompat.dll
sources/SetupCore.dll
sources/SetupHost.exe
sources/SetupMgr.dll
sources/SetupPlatform.cfg
sources/SetupPlatform.dll
sources/SetupPlatform.exe
sources/SetupPrep.exe
sources/SmiEngine.dll
sources/spflvrnt.dll
sources/spprgrss.dll
sources/spwizeng.dll
sources/spwizimg.dll
sources/spwizres.dll
sources/sqmapi.dll
sources/testplugin.dll
sources/unattend.dll
sources/unbcl.dll
sources/upgloader.dll
sources/upgrade_frmwrk.xml
sources/uxlib.dll
sources/uxlibres.dll
sources/vhdprovider.dll
sources/w32uiimg.dll
sources/w32uires.dll
sources/warning.gif
sources/wdsclient.dll
sources/wdsclientapi.dll
sources/wdscore.dll
sources/wdscsl.dll
sources/wdsimage.dll
sources/wdstptc.dll
sources/wdsutil.dll
sources/wimprovider.dll
sources/win32ui.dll
sources/WinDlp.dll
sources/winsetup.dll
sources/wpx.dll
sources/xmllite.dll
sources/..-.*/appraiser.dll.mui
sources/..-.*/arunres.dll.mui
sources/..-.*/cmisetup.dll.mui
sources/..-.*/compatctrl.dll.mui
sources/..-.*/compatprovider.dll.mui
sources/..-.*/dism.exe.mui
sources/..-.*/dismapi.dll.mui
sources/..-.*/dismcore.dll.mui
sources/..-.*/dismprov.dll.mui
sources/..-.*/folderprovider.dll.mui
sources/..-.*/imagingprovider.dll.mui
sources/..-.*/input.dll.mui
sources/..-.*/logprovider.dll.mui
sources/..-.*/MediaSetupUIMgr.dll.mui
sources/..-.*/nlsbres.dll.mui
sources/..-.*/pnpibs.dll.mui
sources/..-.*/reagent.adml
sources/..-.*/reagent.dll.mui
sources/..-.*/rollback.exe.mui
sources/..-.*/setup.exe.mui
sources/..-.*/setupcompat.dll.mui
sources/..-.*/SetupCore.dll.mui
sources/..-.*/setupplatform.exe.mui
sources/..-.*/SetupPrep.exe.mui
sources/..-.*/setup_help_upgrade_or_custom.rtf
sources/..-.*/smiengine.dll.mui
sources/..-.*/spwizres.dll.mui
sources/..-.*/upgloader.dll.mui
sources/..-.*/uxlibres.dll.mui
sources/..-.*/vhdprovider.dll.mui
sources/..-.*/vofflps.rtf
sources/..-.*/vofflps_server.rtf
sources/..-.*/w32uires.dll.mui
sources/..-.*/wdsclient.dll.mui
sources/..-.*/wdsimage.dll.mui
sources/..-.*/wimprovider.dll.mui
sources/..-.*/WinDlp.dll.mui
sources/..-.*/winsetup.dll.mui'

bcdPatch='cd \Objects\{7619dcc9-fafe-11d9-b411-000476eba25f}\Elements
nk 250000c2
cd 250000c2
nv 3 Element
ed Element
8
:00000  00 00 00 00 00 00 00 00
s
q
y
'

infoColor="\033[1;94m"
errorColor="\033[1;91m"
resetColor="\033[0m"

if [ "$1" == "-?" -o "$1" == "--help" -o "$1" == "-h" ]; then
  echo "Usage:"
  echo "$0 [compression] [uups_directory] [create_virtual_editions]"
  echo ""
  echo -e "${infoColor}compression options:${resetColor}"
  echo "wim - standard compression (default)"
  echo "esd - solid compression"
  echo ""
  echo -e "${infoColor}create_virtual_editions options:${resetColor}"
  echo "0 - do not create virtual editions (default)"
  echo "1 - create virtual edtitions"
  echo ""
  echo -e "${infoColor}convert_config_linux file${resetColor}"
  echo "This file can be used to configure some advanced options of this script."
  echo "It is required to place configuration in the same directory as script."
  echo ""
  echo "Possible configuration options:"
  echo "VIRTUAL_EDITIONS_LIST='space delimited editions sequence'"
  echo ""
  echo -e "${infoColor}List of editions created if you enable virtual edtitions creation:${resetColor}"
  for edition in $VIRTUAL_EDITIONS_LIST; do
    echo "- $edition"
  done
  echo "When VIRTUAL_EDITIONS_LIST is not configured, this list contains all editions."
  exit
fi

if ! which cabextract >/dev/null 2>&1 \
|| ! which wimlib-imagex >/dev/null 2>&1 \
|| ! which chntpw >/dev/null 2>&1 \
|| ! which genisoimage >/dev/null 2>&1; then
  echo "One of required applications is not installed."
  echo "The following applications need to be installed to use this script:"
  echo " - cabextract"
  echo " - wimlib-imagex"
  echo " - chntpw"
  echo " - genisoimage"
  echo ""
  echo "If you use Debian or Ubuntu you can install these using:"
  echo "sudo apt-get install cabextract wimtools chntpw genisoimage"
  exit 1
fi

if ! [ -z $1 ]; then
  type="$1"
else
  type="wim"
fi

if ! [ "$type" == "wim" -o "$type" == "esd" ]; then
  echo -e "$errorColor""Incorrect compression type.""$resetColor"
  echo "Possible options: wim, esd"
  exit 1
fi

if ! [ -z $2 ]; then
  uupDir="$2"
else
  uupDir="UUPs"
fi

if ! [ -z $3 ]; then
  runVirtualEditions="$3"
else
  runVirtualEditions=0
fi

if ! [ -d "$uupDir" ]; then
  echo -e "$errorColor""Specified directory containing UUP files does not exist!""$resetColor"
  exit 1
fi

if [ "$type" == "esd" ]; then
  compressParam="--solid"
else
  compressParam="--compress=maximum"
  type="wim"
fi

function cleanup() {
  rm -rf ISODIR
  rm -rf "$tempDir"
}

function errorHandler() {
  if [ $1 != 0 ]; then
    echo -e "${errorColor}$2${resetColor}"
    cleanup
    exit 1
  fi
}

if [ -e ISODIR ]; then
  rm -rf ISODIR
fi

list=
for i in $editions; do
    list="$list -ie \"$i""_..-.*.esd\""
done

metadataFiles=$(find "$uupDir" 2>/dev/null | eval grep $list)
if [ $? != 0 ]; then
  echo -e "$errorColor""No metadata ESDs found.""$resetColor"
  exit 1
fi

list=

lang=$(grep -i "_..-.*.esd" <<< "$metadataFiles" | head -1 | sed 's/.*_//g;s/.esd//gi')
metadataFiles=$(grep -i "$lang" <<< "$metadataFiles" | sort | uniq)
firstMetadata=$(head -1 <<< "$metadataFiles")

tempDir=`mktemp -d`
extractDir="$tempDir/extract"

echo -e "\033[1m$scriptName\033[0m"

if [ $runVirtualEditions -eq 1 ] && [ "$VIRTUAL_EDITIONS_PLUGIN_LOADED" != "1" ]; then
  echo "Virtual editions will be not created, because plugin isn't loaded."
  runVirtualEditions=0
fi

for file in `find "$uupDir" -type f -iname "*.cab"`; do
  fileName=`basename $file .cab`
  echo -e "$infoColor""CAB -> ESD:""$resetColor"" $fileName"

  mkdir "$extractDir"
  cabextract -d "$extractDir" "$file" >/dev/null 2>/dev/null
  errorHandler $? "Failed to extract $fileName.cab"

  wimlib-imagex capture "$extractDir" "$tempDir/$fileName.esd" >/dev/null
  errorHandler $? "Failed to create $fileName.esd"

  rm -rf "$extractDir"
done

fileName=
file=
extractDir=

export WIMLIB_IMAGEX_IGNORE_CASE=1
mkdir ISODIR

echo ""
echo -e "$infoColor""Creating ISO structure...""$resetColor"

wimlib-imagex apply "$firstMetadata" 1 ISODIR --no-acls 2>/dev/null
errorHandler $? "Failed to create ISO structure"

chntpw -e ISODIR/boot/bcd <<< "$bcdPatch" >/dev/null
chntpw -e ISODIR/efi/microsoft/boot/bcd <<< "$bcdPatch" >/dev/null

echo ""
echo -e "$infoColor""Exporting winre.wim...""$resetColor"

wimlib-imagex export "$firstMetadata" 2 "$tempDir/winre.wim" \
  --compress=maximum --boot

errorHandler $? "Failed to export winre.wim"

echo ""
echo -e "$infoColor""Creating boot.wim...""$resetColor"
cp "$tempDir/winre.wim" ISODIR/sources/boot.wim

wimlib-imagex info ISODIR/sources/boot.wim 1 "Microsoft Windows PE" \
  --image-property FLAGS=9 >/dev/null

wimlib-imagex extract ISODIR/sources/boot.wim 1 --dest-dir="$tempDir" \
  "/Windows/System32/config/SOFTWARE" --no-acls >/dev/null

errorHandler $? "Failed to extract registry"

echo 'cd Microsoft\Windows NT\CurrentVersion
nv 1 SystemRoot
ed SystemRoot
X:\$Windows.~bt\Windows
cd WinPE
nv 1 InstRoot
ed InstRoot
X:\$Windows.~bt
q
y' | chntpw -e "$tempDir/SOFTWARE" >/dev/null

wimlib-imagex update ISODIR/sources/boot.wim 1 \
  --command "add $tempDir/SOFTWARE /Windows/System32/config/SOFTWARE" >/dev/null

wimlib-imagex update ISODIR/sources/boot.wim 1 \
  --command "add ISODIR/sources/background_cli.bmp /Windows/system32/winre.jpg" >/dev/null

wimlib-imagex update ISODIR/sources/boot.wim 1 \
  --command "delete /Windows/System32/winpeshl.ini" >/dev/null

wimlib-imagex export "$tempDir/winre.wim" 1 \
  ISODIR/sources/boot.wim "Microsoft Windows Setup"

errorHandler $? "Failed to create second index of boot.wim"

wimlib-imagex extract "$firstMetadata" 3 "/Windows/System32/xmllite.dll" \
  --no-acls --dest-dir="ISODIR/sources" >/dev/null

wimlib-imagex info ISODIR/sources/boot.wim 2 --image-property FLAGS=2 >/dev/null
wimlib-imagex info ISODIR/sources/boot.wim 2 --boot >/dev/null

list=
for i in $bootSourcesList; do
    list="$list -oie \"$i\""
done

files=$(find ISODIR -regex ".*/sources/.*" | eval grep $list)
list=

echo "delete /Windows/System32/winpeshl.ini" >"$tempDir/update.txt"
echo "add ISODIR/setup.exe /setup.exe" >>"$tempDir/update.txt"
echo "add ISODIR/sources/background_cli.bmp /sources/background.bmp" >>"$tempDir/update.txt"
echo "add ISODIR/sources/background_cli.bmp /Windows/system32/winre.jpg" >>"$tempDir/update.txt"
for i in $files; do
    echo "add ISODIR/$i /$i" >>"$tempDir/update.txt"
done

wimlib-imagex update ISODIR/sources/boot.wim 2 <"$tempDir/update.txt" >/dev/null
errorHandler $? "Failed to add required files to second index of boot.wim"

wimlib-imagex optimize ISODIR/sources/boot.wim
rm "ISODIR/sources/xmllite.dll"

echo ""
indexesExported=0
for metadata in $metadataFiles; do
  currentInfo=`wimlib-imagex info "$metadata" 3`

  currentEdition=`grep -i "^Edition ID:" <<< "$currentInfo" | sed "s/.*  //g"`
  editionName="Windows 10 $currentEdition"

  echo -e "$infoColor""Exporting $editionName to install.$type...""$resetColor"

  wimlib-imagex export "$metadata" 3 ISODIR/sources/install.$type \
    "$editionName" $compressParam --ref="$uupDir/*.esd" --ref "$tempDir/*.esd"

  errorHandler $? "Failed to export $editionName to install.$type""$resetColor"

  let indexesExported++

  echo ""
  echo -e "$infoColor""Adding winre.wim for $editionName...""$resetColor"
  wimlib-imagex update ISODIR/sources/install.$type $indexesExported \
    --command "add $tempDir/winre.wim /Windows/System32/Recovery/winre.wim"

  echo ""
done

info=`wimlib-imagex info "$firstMetadata" 3`
build=`grep -i "^Build:" <<< "$info" | sed "s/.*  //g"`

addedVirtualEditions=0
if [ $runVirtualEditions -eq 1 ] && [ $build -ge 17063 ]; then
  echo -e "$infoColor""Creating virtual editions...""$resetColor"
  for virtualEdition in $VIRTUAL_EDITIONS_LIST; do
    echo -e "$infoColor""Adding $virtualEdition edition...""$resetColor"
    createVirtualEdition "$virtualEdition"
    error=$?
    if [ $error -ne 1 ]; then
      errorHandler $error "Failed to create virtual edition"
      let addedVirtualEditions++
    fi
    echo ""
  done
elif [ $build -lt 17063 ]; then
  echo "Virtual editions creation requires build 17063 or later"
fi

let indexesSum=$addedVirtualEditions+$indexesExported
spbuild=`grep -i "^Service Pack Build:" <<< "$info" | sed "s/.*  //g"`
arch=`grep -i "^Architecture:" <<< "$info" | sed "s/.*  //g"`

if [ "$arch" == "x86_64" ]; then
  arch="x64"
fi

if [ $indexesSum -gt 1 ]; then
  isoEdition="MULTI"
else
  isoEdition=`grep -i "^Edition ID:" <<< "$info" | sed "s/.*  //g"`
fi

isoLabel=`tr "[:lower:]" "[:upper:]" <<< "${build}.${spbuild}_${arch}_${lang}"`
isoName=`tr "[:lower:]" "[:upper:]" <<< "${build}.${spbuild}_${isoEdition}_${arch}_${lang}.iso"`

if [ -e "$isoName" ]; then
  rm "$isoName"
fi

echo -e "$infoColor""Optimizing install.$type...""$resetColor"
wimlib-imagex optimize ISODIR/sources/install.$type
echo ""

echo -e "$infoColor""Creating ISO image...""$resetColor"
find ISODIR -exec touch {} +

genisoimage -b "boot/etfsboot.com" --no-emul-boot \
  --eltorito-alt-boot -b "efi/microsoft/boot/efisys.bin" --no-emul-boot \
  --udf --hide "*" -V "$isoLabel" -o "$isoName" ISODIR

errorHandler $? "Failed to create ISO image""$resetColor"

cleanup
echo -e "\033[1;92mDone.""$resetColor"
