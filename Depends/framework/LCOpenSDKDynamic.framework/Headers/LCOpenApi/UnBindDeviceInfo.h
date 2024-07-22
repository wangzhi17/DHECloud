/**
 *  Auto created by ApiCreator Tool.
 *  SVN Rev: unknown, Author: unknown, Date: unknown
 *  SHOULD NOT MODIFY!
 */
 
#ifndef _LC_OPENAPI_CLIENT_UnBindDeviceInfo_H_
#define _LC_OPENAPI_CLIENT_UnBindDeviceInfo_H_

#include "LCOpenApiDefine.h"
#include "LCOpenApiRequest.h"
#include "LCOpenApiResponse.h"

/** DESCRIPTION: 
获取未绑定的设备信息
 */

namespace Dahua{
namespace LCOpenApi{
	class MetaInfo;
	using namespace std;
	class UnBindDeviceInfoRequest : public LCOpenApiRequest
	{
	public:
		class UnBindDeviceInfoRequestData
		{
		public:
			UnBindDeviceInfoRequestData();
			~UnBindDeviceInfoRequestData();
			
		public:
			/** [cstr]unBindDeviceInfo */
			#define _STATIC_UnBindDeviceInfoRequestData_method "unBindDeviceInfo"
			string method;
		public:
			/** 授权token(userToken或accessToken) */
			string token;
		public:
			/** 设备ID */
			string deviceId;

		};
	public:
		UnBindDeviceInfoRequest();
		~UnBindDeviceInfoRequest();
	public:
		virtual int build();
	public:
		UnBindDeviceInfoRequestData data;
		MetaInfo* _metainfo_UnBindDeviceInfoRequestData;
	};

	
	typedef typename UnBindDeviceInfoRequest::UnBindDeviceInfoRequestData UnBindDeviceInfoRequestData;


	class UnBindDeviceInfoResponse : public LCOpenApiResponse
	{
	public:
		class UnBindDeviceInfoResponseData
		{
		public:
			UnBindDeviceInfoResponseData();
			~UnBindDeviceInfoResponseData();
			
		public:
			/** xxx@qq.com */
			string owner;
		public:
			/** device */
			string type;
		public:
			/**  */
			string modelName;
		public:
			/** NVR */
			string catalog;
		public:
			/** IP Camera */
			string deviceModel;
		public:
			/** unbind */
			string bindStatus;
		public:
			/** 1 */
			string channelNum;
		public:
			/** 37778 */
			string tlsPrivatePort;
		public:
			/** 554 */
			string rtspPort;
		public:
			/** 37777 */
			string port;
		public:
			/** [O]设备能力项，逗号隔开，如AlarmMD,AudioTalk,AlarmPIR,WLAN,VVP2P，详见乐橙开放平台设备协议 */
			string ability;
		public:
			/** exist */
			string deviceExist;
		public:
			/** online */
			string status;
		public:
			/** 80 */
			string httpPort;
		public:
			/** PaaS */
			string accessType;
		public:
			/** 0 */
			string privateMediaPort;

		};
	public:
		UnBindDeviceInfoResponse();
		~UnBindDeviceInfoResponse();
	public:
		virtual int parse();
	public:
		UnBindDeviceInfoResponseData data;
		MetaInfo* _metainfo_UnBindDeviceInfoResponseData;
	};

	
	typedef typename UnBindDeviceInfoResponse::UnBindDeviceInfoResponseData UnBindDeviceInfoResponseData;

}
}

#endif
