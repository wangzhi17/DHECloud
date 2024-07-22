#! /bin/bash
src=$1
det=$2

cpFramework(){
	frameworkTar=$1
	frameworkDir=$2
	tar -zxvf $src/$frameworkTar 
	cp -Rf Lib/ios/MediaStreamComponents/$frameworkDir/*.framework $det
	rm -rf Lib
}

cp -Rf $src/LCOpenSDKDynamic.framework $det
cp -Rf $src/ios_netsdk/dhsdk.framework $det
cp -Rf $src/Logs/Version.xml $det

cpFramework CommunityCloudStreamFrameworkDynamic.framework.tar.gz CommunityCloudStream 
cpFramework DSSCloudStreamFrameworkDynamic.framework.tar.gz DSScloudStream 
cpFramework DPSStreamFrameworkDynamic.framework.tar.gz DPSStream
cpFramework DPExpressStreamFrameworkDynamic.framework.tar.gz ExpressStream
cpFramework DHHTTPStreamDynamic.framework.tar.gz DHHTTPStream
cpFramework HlsStreamFrameworkDynamic.framework.tar.gz HlsStream
cpFramework RtspStreamFrameworkDynamic.framework.tar.gz RtspStream
cpFramework SipStream_dynamic.framework.tar.gz SipStream
cpFramework RtpOUdp_dynamic.framework.tar.gz RtpOUdpStream

