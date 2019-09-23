class LoginInfo {
  int code;
  String msg;
  Data data;

  LoginInfo({this.code, this.msg, this.data});

  LoginInfo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String token;
  Admin admin;
  Area area;
  Service service;
  Cookies cookies;
  String env;

  Data(
      {this.token,
      this.admin,
      this.area,
      this.service,
      this.cookies,
      this.env});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    admin = json['admin'] != null ? new Admin.fromJson(json['admin']) : null;
    area = json['area'] != null ? new Area.fromJson(json['area']) : null;
    service =
        json['service'] != null ? new Service.fromJson(json['service']) : null;
    cookies =
        json['cookies'] != null ? new Cookies.fromJson(json['cookies']) : null;
    env = json['env'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.admin != null) {
      data['admin'] = this.admin.toJson();
    }
    if (this.area != null) {
      data['area'] = this.area.toJson();
    }
    if (this.service != null) {
      data['service'] = this.service.toJson();
    }
    if (this.cookies != null) {
      data['cookies'] = this.cookies.toJson();
    }
    data['env'] = this.env;
    return data;
  }
}

class Admin {
  int accountId;
  String accountName;
  int areaId;
  int roleId;
  int sex;
  String qq;
  String email;
  int isDelete;
  String avatar;
  String nickname;
  String qrCode;
  String weChatName;
  String telephone;
  int parentId;
  int isForbidden;
  int licenseId;
  int licenseExpired;
  bool accountStatus;
  int voiceStatus;
  Null lossSet;
  int groupId;
  String groupName;
  int gid;
  int fid;
  String shopName;
  String shopVersion;
  String shopLogo;
  String smsSign;

  Admin(
      {this.accountId,
      this.accountName,
      this.areaId,
      this.roleId,
      this.sex,
      this.qq,
      this.email,
      this.isDelete,
      this.avatar,
      this.nickname,
      this.qrCode,
      this.weChatName,
      this.telephone,
      this.parentId,
      this.isForbidden,
      this.licenseId,
      this.licenseExpired,
      this.accountStatus,
      this.voiceStatus,
      this.lossSet,
      this.groupId,
      this.groupName,
      this.gid,
      this.fid,
      this.shopName,
      this.shopVersion,
      this.shopLogo,
      this.smsSign});

  Admin.fromJson(Map<String, dynamic> json) {
    accountId = json['accountId'];
    accountName = json['accountName'];
    areaId = json['areaId'];
    roleId = json['roleId'];
    sex = json['sex'];
    qq = json['qq'];
    email = json['email'];
    isDelete = json['isDelete'];
    avatar = json['avatar'];
    nickname = json['nickname'];
    qrCode = json['qrCode'];
    weChatName = json['WeChatName'];
    telephone = json['telephone'];
    parentId = json['parentId'];
    isForbidden = json['isForbidden'];
    licenseId = json['licenseId'];
    licenseExpired = json['licenseExpired'];
    accountStatus = json['accountStatus'];
    voiceStatus = json['voice_status'];
    lossSet = json['lossSet'];
    groupId = json['groupId'];
    groupName = json['groupName'];
    gid = json['gid'];
    fid = json['fid'];
    shopName = json['shopName'];
    shopVersion = json['shopVersion'];
    shopLogo = json['shopLogo'];
    smsSign = json['sms_sign'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountId'] = this.accountId;
    data['accountName'] = this.accountName;
    data['areaId'] = this.areaId;
    data['roleId'] = this.roleId;
    data['sex'] = this.sex;
    data['qq'] = this.qq;
    data['email'] = this.email;
    data['isDelete'] = this.isDelete;
    data['avatar'] = this.avatar;
    data['nickname'] = this.nickname;
    data['qrCode'] = this.qrCode;
    data['WeChatName'] = this.weChatName;
    data['telephone'] = this.telephone;
    data['parentId'] = this.parentId;
    data['isForbidden'] = this.isForbidden;
    data['licenseId'] = this.licenseId;
    data['licenseExpired'] = this.licenseExpired;
    data['accountStatus'] = this.accountStatus;
    data['voice_status'] = this.voiceStatus;
    data['lossSet'] = this.lossSet;
    data['groupId'] = this.groupId;
    data['groupName'] = this.groupName;
    data['gid'] = this.gid;
    data['fid'] = this.fid;
    data['shopName'] = this.shopName;
    data['shopVersion'] = this.shopVersion;
    data['shopLogo'] = this.shopLogo;
    data['sms_sign'] = this.smsSign;
    return data;
  }
}

class Area {
  int id;
  String fullName;
  String shortName;
  String logo;
  String weChatOfficialAccountsQrCode;
  String companyImage;
  String introduction;
  String address;
  String longitude;
  String latitude;
  String appId;
  int appSecret;
  int appMenuStatus;
  int version;
  String url;
  int appHighApi;
  int provinceId;
  int cityId;
  int districtId;
  int gid;
  int fid;

  Area(
      {this.id,
      this.fullName,
      this.shortName,
      this.logo,
      this.weChatOfficialAccountsQrCode,
      this.companyImage,
      this.introduction,
      this.address,
      this.longitude,
      this.latitude,
      this.appId,
      this.appSecret,
      this.appMenuStatus,
      this.version,
      this.url,
      this.appHighApi,
      this.provinceId,
      this.cityId,
      this.districtId,
      this.gid,
      this.fid});

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    shortName = json['shortName'];
    logo = json['logo'];
    weChatOfficialAccountsQrCode = json['WeChatOfficialAccountsQrCode'];
    companyImage = json['companyImage'];
    introduction = json['introduction'];
    address = json['address'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    appId = json['AppId'];
    appSecret = json['AppSecret'];
    appMenuStatus = json['AppMenuStatus'];
    version = json['version'];
    url = json['url'];
    appHighApi = json['AppHighApi'];
    provinceId = json['provinceId'];
    cityId = json['cityId'];
    districtId = json['districtId'];
    gid = json['gid'];
    fid = json['fid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['shortName'] = this.shortName;
    data['logo'] = this.logo;
    data['WeChatOfficialAccountsQrCode'] = this.weChatOfficialAccountsQrCode;
    data['companyImage'] = this.companyImage;
    data['introduction'] = this.introduction;
    data['address'] = this.address;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['AppId'] = this.appId;
    data['AppSecret'] = this.appSecret;
    data['AppMenuStatus'] = this.appMenuStatus;
    data['version'] = this.version;
    data['url'] = this.url;
    data['AppHighApi'] = this.appHighApi;
    data['provinceId'] = this.provinceId;
    data['cityId'] = this.cityId;
    data['districtId'] = this.districtId;
    data['gid'] = this.gid;
    data['fid'] = this.fid;
    return data;
  }
}

class Service {
  String websocketsServiceIp;
  String pcPushListenPort;
  Null pcCommonListenPort;

  Service(
      {this.websocketsServiceIp,
      this.pcPushListenPort,
      this.pcCommonListenPort});

  Service.fromJson(Map<String, dynamic> json) {
    websocketsServiceIp = json['websockets_service_ip'];
    pcPushListenPort = json['pc_push_listen_port'];
    pcCommonListenPort = json['pc_common_listen_port'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['websockets_service_ip'] = this.websocketsServiceIp;
    data['pc_push_listen_port'] = this.pcPushListenPort;
    data['pc_common_listen_port'] = this.pcCommonListenPort;
    return data;
  }
}

class Cookies {
  int bRANCHID;

  Cookies({this.bRANCHID});

  Cookies.fromJson(Map<String, dynamic> json) {
    bRANCHID = json['BRANCHID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BRANCHID'] = this.bRANCHID;
    return data;
  }
}