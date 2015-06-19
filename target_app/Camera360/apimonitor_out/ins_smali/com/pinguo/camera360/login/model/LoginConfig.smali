.class public Lcom/pinguo/camera360/login/model/LoginConfig;
.super Ljava/lang/Object;
.source "LoginConfig.java"
.field public static DEBUG:Z = false
.field public static final DEFAULT_BACKOFF_MULT:I = 0x0
.field public static final DEFAULT_MAX_RETRIES:I = 0x0
.field public static final DEFAULT_TIMEOUT_MS:I = 0x3a98
.field public static final EMAIL_LOGIN_ADDR:Ljava/lang/String; = "/api/user/login"
.field public static HOST:Ljava/lang/String; = null
.field public static HOST_CLOUD:Ljava/lang/String; = null
.field public static final REGISTER_EMAIL_URL:Ljava/lang/String; = "/api/user/register"
.field public static final SNS_BIND_ADDR:Ljava/lang/String; = "/api/third/login/binding"
.field public static final SNS_CALL_RESULT:Ljava/lang/String; = "/api/third/login/callbackResult"
.field public static final SNS_LOGIN_ADDR:Ljava/lang/String; = "/api/third/login/index"
.field public static final SNS_SSO_BIND_ADDR:Ljava/lang/String; = "/api/third/login/bindingSso"
.field public static final SNS_SSO_LOGIN_ADDR:Ljava/lang/String; = "/api/third/login/sso"
.field public static final URL_EMAIL_BIND:Ljava/lang/String; = "/api/third/login/bindingEmail"
.field public static final URL_EMAIL_CHECK:Ljava/lang/String; = "/api/user/checkemail"
.field public static final URL_FIND_PASSWORD:Ljava/lang/String; = "/api/user/forgetpassword"
.field public static final URL_LOCATION_GET:Ljava/lang/String; = "/geo/info/"
.field public static final URL_MODIFY_PASSWORD:Ljava/lang/String; = "/api/user/changepassword"
.field public static final URL_UPDATE_USER:Ljava/lang/String; = "/api/user/updateInfo"
.field public static final URL_USER_INFO:Ljava/lang/String; = "/api/user/info"
.field private static mInstance:Lcom/pinguo/camera360/login/model/LoginConfig;
.field private appKey:Ljava/lang/String;
.field private channel:Ljava/lang/String;
.field private qqSso:Lcom/pinguo/camera360/login/model/QQSso;
.field private sinaSso:Lcom/pinguo/camera360/login/model/SinaSso;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/camera360/login/model/LoginConfig;->DEBUG:Z
sget-boolean v0, Lcom/pinguo/camera360/login/model/LoginConfig;->DEBUG:Z
if-eqz v0, :cond_16
const-string/jumbo v0, "https://cloudtest.camera360.com"
:goto_a
sput-object v0, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST_CLOUD:Ljava/lang/String;
sget-boolean v0, Lcom/pinguo/camera360/login/model/LoginConfig;->DEBUG:Z
if-eqz v0, :cond_1a
const-string/jumbo v0, "https://itest.camera360.com"
:goto_13
sput-object v0, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;
return-void
:cond_16
const-string/jumbo v0, "https://cloud.camera360.com"
goto :goto_a
:cond_1a
const-string/jumbo v0, "https://i.camera360.com"
goto :goto_13
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->channel:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->appKey:Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->sinaSso:Lcom/pinguo/camera360/login/model/SinaSso;
iput-object v1, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->qqSso:Lcom/pinguo/camera360/login/model/QQSso;
return-void
.end method
.method public static getInstance()Lcom/pinguo/camera360/login/model/LoginConfig;
.registers 1
sget-object v0, Lcom/pinguo/camera360/login/model/LoginConfig;->mInstance:Lcom/pinguo/camera360/login/model/LoginConfig;
if-nez v0, :cond_b
new-instance v0, Lcom/pinguo/camera360/login/model/LoginConfig;
invoke-direct {v0}, Lcom/pinguo/camera360/login/model/LoginConfig;-><init>()V
sput-object v0, Lcom/pinguo/camera360/login/model/LoginConfig;->mInstance:Lcom/pinguo/camera360/login/model/LoginConfig;
:cond_b
sget-object v0, Lcom/pinguo/camera360/login/model/LoginConfig;->mInstance:Lcom/pinguo/camera360/login/model/LoginConfig;
return-object v0
.end method
.method public static getRetryPolicy()Lcom/android/volley/RetryPolicy;
.registers 4
new-instance v0, Lcom/android/volley/DefaultRetryPolicy;
const/16 v1, 0x3a98
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V
return-object v0
.end method
.method public static prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
.registers 4
const-string/jumbo v0, "appkey"
const-string/jumbo v1, "5dab06e7a53740ea9b78"
invoke-static {v1}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p0, p1}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
return-void
.end method
.method public getAppKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->appKey:Ljava/lang/String;
return-object v0
.end method
.method public getChannel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->channel:Ljava/lang/String;
return-object v0
.end method
.method public getQQSso()Lcom/pinguo/camera360/login/model/QQSso;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->qqSso:Lcom/pinguo/camera360/login/model/QQSso;
return-object v0
.end method
.method public getSinaSso()Lcom/pinguo/camera360/login/model/SinaSso;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->sinaSso:Lcom/pinguo/camera360/login/model/SinaSso;
return-object v0
.end method
.method public init(Landroid/content/Context;)V
.registers 2
invoke-static {p1}, Lcom/pinguo/camera360/login/model/DeviceInfo;->initDevice(Landroid/content/Context;)V
return-void
.end method
.method public setAppKey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->appKey:Ljava/lang/String;
return-void
.end method
.method public setChannel(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->channel:Ljava/lang/String;
return-void
.end method
.method public setQQSso(Lcom/pinguo/camera360/login/model/QQSso;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->qqSso:Lcom/pinguo/camera360/login/model/QQSso;
return-void
.end method
.method public setSinaSso(Lcom/pinguo/camera360/login/model/SinaSso;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/model/LoginConfig;->sinaSso:Lcom/pinguo/camera360/login/model/SinaSso;
return-void
.end method