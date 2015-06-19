.class public LvStudio/Android/Camera360/RemoteConstants;
.super Ljava/lang/Object;
.source "RemoteConstants.java"
.field public static final BINDACCOUNTADDRESS:Ljava/lang/String; = "/sns/login/bindAccount"
.field public static final CHECKEMAIL_ADDR:Ljava/lang/String; = "/mobile/user/sendConfirmationEmail"
.field public static final DEFAULT_BACKOFF_MULT:I = 0x0
.field public static final DEFAULT_MAX_RETRIES:I = 0x0
.field public static final DEFAULT_TIMEOUT_MS:I = 0x3a98
.field public static final EMAIL_AUTH_ADDR:Ljava/lang/String; = "/mobile/user/sendVerifyEmail"
.field public static final EMAIL_LOGIN_ADDR:Ljava/lang/String; = "/mobile/user/login"
.field public static final FIND_PASSWORD_ADDR:Ljava/lang/String; = "/mobile/user/sendResetEmail"
.field public static HOST:Ljava/lang/String; = null
.field public static HOST_CLOUD:Ljava/lang/String; = null
.field public static final HOST_COMMON_PROBLEM:Ljava/lang/String; = "http://appres.camera360.com"
.field public static HOST_FEEDBACK:Ljava/lang/String; = null
.field public static HOST_PUSH_MSG:Ljava/lang/String; = null
.field public static final HOST_STORE:Ljava/lang/String; = "http://store.camera360.com"
.field public static final HOST_STORE_ORDER:Ljava/lang/String; = "https://bstore.camera360.com"
.field public static final MSG_CENTER_URL:Ljava/lang/String; = null
.field public static final NORMAL_PICTURE:Ljava/lang/String; = "/mobile/user/normalPictures"
.field public static final ORDER_URL:Ljava/lang/String; = "http://store.camera360.com/v1/order/create"
.field public static final PHOTO_WALL_LINKS:Ljava/lang/String; = "/mobile/share/getPhotoWallLinks"
.field public static final PRODUCT_BASE_URL:Ljava/lang/String; = "http://store.camera360.com/v1/store"
.field public static final REGISTER_EMAIL_URL:Ljava/lang/String; = "/api/user/register"
.field public static final SINA_SSO_BIND_ADDR:Ljava/lang/String; = "/sns/login/bindingLoginSso"
.field public static final SINA_SSO_LOGIN_ADDR:Ljava/lang/String; = "/sns/login/nativeLoginSso"
.field public static final SNS_CALL_RESULT:Ljava/lang/String; = "/sns/login/callResult"
.field public static final SNS_LOGIN_ADDR:Ljava/lang/String; = "/sns/login/index"
.field public static final UNBINDACCOUNTADDRESS:Ljava/lang/String; = "/sns/login/createSnsUser"
.field public static final URL_ACTIVITY_INFO:Ljava/lang/String; = "https://bstore.camera360.com/api/coupon/getActivityInfo"
.field public static final URL_BANNER_ADVERTISEMENT:Ljava/lang/String; = "http://store.camera360.com/v1/advertisement/list"
.field public static final URL_COUPON_GETCODE:Ljava/lang/String; = "https://bstore.camera360.com/v1/coupon/code"
.field public static final URL_COUPON_INFO:Ljava/lang/String; = "https://bstore.camera360.com/v1/coupon/info"
.field public static final URL_COUPON_VERIFY_CODE:Ljava/lang/String; = "https://bstore.camera360.com/v1/coupon/verifyCode"
.field public static final URL_CREATE_MATERIAL:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/createMaterial"
.field public static final URL_GENPREPAY:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/genprepay"
.field public static final URL_LOGISTICS_PRICE:Ljava/lang/String; = "https://bstore.camera360.com/api/region/getLogisticsPrice"
.field public static final URL_ORDER_AMOUNT:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/amount"
.field public static final URL_ORDER_DETAIL:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/detail"
.field public static final URL_ORDER_LIST:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/list"
.field public static final URL_PASSPORT_LIST:Ljava/lang/String; = "https://bstore.camera360.com/v1/store/passportList"
.field public static final URL_PASSPORT_SWITCHER:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/switcher"
.field public static final URL_PAY_SUCCESS:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/paysucc"
.field public static final URL_REGION:Ljava/lang/String; = "https://bstore.camera360.com/api/region/listV2"
.field public static final URL_SIGN_ALIPAY:Ljava/lang/String; = "https://bstore.camera360.com/v1/order/signAlipay"
.field public static final URL_SONY_COUPON_SWITCH:Ljava/lang/String; = "http://store.camera360.com/v1/store/switcher"
.field public static final URL_USER_INFO:Ljava/lang/String; = null
.field public static final URL_USER_UPDATE_INFO:Ljava/lang/String; = "/mobile/user/updateInfo"
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "https://cloud.camera360.com"
sput-object v0, LvStudio/Android/Camera360/RemoteConstants;->HOST_CLOUD:Ljava/lang/String;
const-string/jumbo v0, "http://feedback.camera360.com/feedback"
sput-object v0, LvStudio/Android/Camera360/RemoteConstants;->HOST_FEEDBACK:Ljava/lang/String;
const-string/jumbo v0, "http://i.camera360.com"
sput-object v0, LvStudio/Android/Camera360/RemoteConstants;->HOST:Ljava/lang/String;
const-string/jumbo v0, "http://pushmsg.camera360.com"
sput-object v0, LvStudio/Android/Camera360/RemoteConstants;->HOST_PUSH_MSG:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, LvStudio/Android/Camera360/RemoteConstants;->HOST_PUSH_MSG:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/messages/info"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, LvStudio/Android/Camera360/RemoteConstants;->MSG_CENTER_URL:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, LvStudio/Android/Camera360/RemoteConstants;->HOST_CLOUD:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/mobile/user/info"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, LvStudio/Android/Camera360/RemoteConstants;->URL_USER_INFO:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getRetryPolity()Lcom/android/volley/RetryPolicy;
.registers 4
new-instance v0, Lcom/android/volley/DefaultRetryPolicy;
const/16 v1, 0x3a98
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V
return-object v0
.end method
.method public static prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
.registers 14
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v8
if-eqz v8, :cond_4a
iget-object v9, v8, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_4a
iget-object v9, v8, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_4a
const-string/jumbo v9, "uid"
iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "userId"
iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "userToken"
iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "token"
iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4a
const-string/jumbo v9, "platform"
const-string/jumbo v10, "android"
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "channel"
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v10
const v11, 0x7f080084
invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "appname"
const-string/jumbo v10, "camera360"
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getVersionName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_8d
const-string/jumbo v9, "appversion"
invoke-static {v0}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_8d
invoke-static {p0}, Lorg/pinguo/cloudshare/support/ToolUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_ab
const-string/jumbo v9, "deviceId"
invoke-static {v1}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "imei"
invoke-static {v1}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_ab
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_bd
const-string/jumbo v9, "device"
sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_bd
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v9
invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_d5
const-string/jumbo v9, "locale"
invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_d5
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCachedGeoLocation()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_10e
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v9
if-nez v9, :cond_10e
const-string/jumbo v9, ","
invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_10e
array-length v9, v2
const/4 v10, 0x2
if-ne v9, v10, :cond_10e
const-string/jumbo v9, "geoinfo"
invoke-static {v3}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "longitude"
const/4 v10, 0x0
aget-object v10, v2, v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v9, "latitude"
const/4 v10, 0x1
aget-object v10, v2, v10
invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_10e
invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getMCC(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_11e
const-string/jumbo v9, "mcc"
invoke-interface {p1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_11e
invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getMNC(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_12e
const-string/jumbo v9, "mnc"
invoke-interface {p1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_12e
return-void
.end method