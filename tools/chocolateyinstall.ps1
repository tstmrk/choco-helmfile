
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/roboll/helmfile/releases/download/v0.99.1/helmfile_windows_386.exe'
$url64      = 'https://github.com/roboll/helmfile/releases/download/v0.99.1/helmfile_windows_amd64.exe'

$packageArgs = @{
  packageName   = 'helmfile'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'helmfile*'

  checksum      = 'cc71773cb1012ac3b1e827874b361e8296463edc8f2a405faf770afd54cebfb5'
  checksumType  = 'sha256'
  checksum64    = '84f234ebbb04e311ea84ab4fcff0d4e57cd2271b41ec062ec8e6dca45a699d4d'
  checksumType64= 'sha256'

  silentArgs    = ""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs







    








