.class public abstract Lcom/tencent/connect/common/BaseApi;
.super Ljava/lang/Object;
.source "ProGuard"
.field protected static final ACTION_CHECK_TOKEN:Ljava/lang/String; = "action_check_token"
.field protected static final ACTIVITY_AGENT:Ljava/lang/String; = "com.tencent.open.agent.AgentActivity"
.field protected static final ACTIVITY_ENCRY_TOKEN:Ljava/lang/String; = "com.tencent.open.agent.EncryTokenActivity"
.field protected static final DEFAULT_PF:Ljava/lang/String; = "openmobile_android"
.field private static final KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"
.field private static final MSG_COMPLETE:I = 0x0
.field protected static final PARAM_ENCRY_EOKEN:Ljava/lang/String; = "encry_token"
.field protected static final PLATFORM:Ljava/lang/String; = "desktop_m_qq"
.field protected static final PREFERENCE_PF:Ljava/lang/String; = "pfStore"
.field private static final TAG:Ljava/lang/String; = null
.field protected static final VERSION:Ljava/lang/String; = "android"
.field public static businessId:Ljava/lang/String;
.field public static installChannel:Ljava/lang/String;
.field public static isOEM:Z
.field public static registerChannel:Ljava/lang/String;
.field protected static sRequestCode:I
.field protected mActivityIntent:Landroid/content/Intent;
.field protected mContext:Landroid/content/Context;
.field protected mProgressDialog:Landroid/app/ProgressDialog;
.field protected mQQAuth:Lcom/tencent/connect/auth/QQAuth;
.field protected mTaskList:Ljava/util/List;
.field protected mToken:Lcom/tencent/connect/auth/QQToken;
.field protected mUiListener:Lcom/tencent/tauth/IUiListener;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const-class v0, Lcom/tencent/connect/common/BaseApi;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/connect/common/BaseApi;->TAG:Ljava/lang/String;
const/16 v0, 0x3e8
sput v0, Lcom/tencent/connect/common/BaseApi;->sRequestCode:I
sput-object v1, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;
sput-object v1, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;
sput-object v1, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;
const/4 v0, 0x0
sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mTaskList:Ljava/util/List;
iput-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mActivityIntent:Landroid/content/Intent;
iput-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mUiListener:Lcom/tencent/tauth/IUiListener;
iput-object p1, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/connect/common/BaseApi;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;
iput-object p3, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mTaskList:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method static synthetic access$000()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/tencent/connect/common/BaseApi;->TAG:Ljava/lang/String;
return-object v0
.end method
.method private getAssitIntent()Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
const-class v2, Lcom/tencent/connect/common/AssistActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
return-object v0
.end method
.method protected composeActivityParams()Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v1, "appid"
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z
move-result v1
if-eqz v1, :cond_2e
const-string/jumbo v1, "keystr"
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "keytype"
const-string/jumbo v2, "0x80"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2e
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3c
const-string/jumbo v2, "hopenid"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3c
const-string/jumbo v1, "platform"
const-string/jumbo v2, "androidqz"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pfStore"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
sget-boolean v2, Lcom/tencent/connect/common/BaseApi;->isOEM:Z
if-eqz v2, :cond_aa
const-string/jumbo v1, "pf"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "desktop_m_qq-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "android"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_97
const-string/jumbo v1, "sdkv"
const-string/jumbo v2, "2.3"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "sdkp"
const-string/jumbo v2, "a"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_aa
const-string/jumbo v2, "pf"
const-string/jumbo v3, "openmobile_android"
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "pf"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "pf"
const-string/jumbo v2, "openmobile_android"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_97
.end method
.method protected composeCGIParams()Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v1, "format"
const-string/jumbo v2, "json"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "status_os"
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "status_machine"
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "status_version"
sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "sdkv"
const-string/jumbo v2, "2.3"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "sdkp"
const-string/jumbo v2, "a"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
if-eqz v1, :cond_68
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z
move-result v1
if-eqz v1, :cond_68
const-string/jumbo v1, "access_token"
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "oauth_consumer_key"
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "openid"
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_68
const-string/jumbo v1, "appid_for_getting_config"
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pfStore"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
sget-boolean v2, Lcom/tencent/connect/common/BaseApi;->isOEM:Z
if-eqz v2, :cond_c7
const-string/jumbo v1, "pf"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "desktop_m_qq-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "android"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_c6
return-object v0
:cond_c7
const-string/jumbo v2, "pf"
const-string/jumbo v3, "openmobile_android"
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "pf"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c6
.end method
.method  getActivityIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mActivityIntent:Landroid/content/Intent;
return-object v0
.end method
.method protected getAgentIntent()Landroid/content/Intent;
.registers 2
const-string/jumbo v0, "com.tencent.open.agent.AgentActivity"
invoke-virtual {p0, v0}, Lcom/tencent/connect/common/BaseApi;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method protected getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
.registers 6
const/4 v0, 0x0
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
invoke-virtual {p0, p1}, Lcom/tencent/connect/common/BaseApi;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
if-nez v2, :cond_d
:cond_c
:goto_c
return-object v0
:cond_d
invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v3
if-eqz v3, :cond_c
invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v0
invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "com.tencent.open.agent.AgentActivity"
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-object v0, v1
goto :goto_c
.end method
.method protected getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;
.registers 7
const/4 v1, 0x0
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
sget-object v2, Lcom/tencent/connect/common/Constants;->PACKAGE_QZONE:Ljava/lang/String;
invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
sget-object v3, Lcom/tencent/connect/common/Constants;->PACKAGE_QQ:Ljava/lang/String;
invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
invoke-static {v3, v2}, Lcom/tencent/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_1f
move-object v0, v2
:goto_1e
:cond_1e
return-object v0
:cond_1f
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
invoke-static {v2, v0}, Lcom/tencent/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_4c
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
sget-object v3, Lcom/tencent/connect/common/Constants;->PACKAGE_QZONE:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/tencent/utils/SystemUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "3.4"
invoke-static {v2, v3}, Lcom/tencent/utils/SystemUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_4c
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v3
invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/tencent/connect/common/Constants;->SIGNATRUE_QZONE:Ljava/lang/String;
invoke-static {v2, v3, v4}, Lcom/tencent/utils/SystemUtils;->isAppSignatureValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1e
move-object v0, v1
goto :goto_1e
:cond_4c
move-object v0, v1
goto :goto_1e
.end method
.method protected handleDownloadLastestQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 11
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
new-instance v2, Lcom/tencent/open/b;
invoke-direct {v2, p1}, Lcom/tencent/open/b;-><init>(Landroid/content/Context;)V
const-string/jumbo v0, "\u8bf7\u5b89\u88c5\u6700\u65b0\u7248QQ"
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->a(Ljava/lang/String;)Lcom/tencent/open/b;
const-string/jumbo v0, "\u65e0\u6cd5\u4f7f\u7528\u8be5\u529f\u80fd\uff0c\u662f\u5426\u4e0b\u8f7dQQ\u624b\u673a\u7248\uff1f"
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->b(Ljava/lang/String;)Lcom/tencent/open/b;
const-string/jumbo v0, "\u4e0b\u8f7d"
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->d(Ljava/lang/String;)Lcom/tencent/open/b;
const/4 v0, 0x1
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->setCancelable(Z)V
const-string/jumbo v0, "\u53d6\u6d88"
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->c(Ljava/lang/String;)Lcom/tencent/open/b;
new-instance v0, Lcom/tencent/connect/common/BaseApi$1;
move-object v1, p0
move-object v3, p1
move-object v5, p3
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/common/BaseApi$1;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/open/b;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->a(Landroid/view/View$OnClickListener;)Lcom/tencent/open/b;
new-instance v0, Lcom/tencent/connect/common/BaseApi$2;
invoke-direct {v0, p0, v2}, Lcom/tencent/connect/common/BaseApi$2;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/open/b;)V
invoke-virtual {v2, v0}, Lcom/tencent/open/b;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/open/b;
invoke-virtual {v2}, Lcom/tencent/open/b;->show()V
return-void
.end method
.method protected hasActivityForIntent()Z
.registers 3
iget-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mActivityIntent:Landroid/content/Intent;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mActivityIntent:Landroid/content/Intent;
invoke-static {v0, v1}, Lcom/tencent/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mTaskList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/connect/common/BaseApi$ApiTask;
iget v3, v0, Lcom/tencent/connect/common/BaseApi$ApiTask;->mRequestCode:I
if-ne v3, p1, :cond_7
iget-object v1, v0, Lcom/tencent/connect/common/BaseApi$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;
iget-object v2, p0, Lcom/tencent/connect/common/BaseApi;->mTaskList:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_1e
if-nez v1, :cond_21
:goto_20
return-void
:cond_21
const/4 v0, -0x1
if-ne p2, v0, :cond_a7
const-string/jumbo v0, "key_error_code"
const/4 v2, 0x0
invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
if-nez v0, :cond_6f
const-string/jumbo v0, "key_response"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_5d
:try_start_37
invoke-static {v2}, Lcom/tencent/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:try_end_3e
.catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3e} :catch_46
:goto_3e
invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/a/a/d;->b()V
goto :goto_20
:catch_46
move-exception v0
new-instance v3, Lcom/tencent/tauth/UiError;
const/4 v4, -0x4
const-string/jumbo v5, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"
invoke-direct {v3, v4, v5, v2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
const-string/jumbo v1, "openSDK_LOG"
const-string/jumbo v2, "OpenUi, onActivityResult, json error"
invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3e
:cond_5d
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v2, "OpenUi, onActivityResult, onComplete"
invoke-static {v0, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
goto :goto_3e
:cond_6f
const-string/jumbo v2, "openSDK_LOG"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "OpenUi, onActivityResult, onError = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/tencent/a/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "key_error_msg"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "key_error_detail"
invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/tencent/tauth/UiError;
invoke-direct {v4, v0, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
goto :goto_3e
:cond_a7
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v2, "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL"
invoke-static {v0, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V
goto :goto_3e
.end method
.method protected showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_9
const-string/jumbo p2, "\u8bf7\u7a0d\u5019"
:cond_9
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_12
const-string/jumbo p3, "\u6b63\u5728\u52a0\u8f7d..."
:cond_12
invoke-static {p1, p2, p3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
return-void
.end method
.method protected startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
.registers 6
invoke-static {p0}, Lcom/tencent/connect/common/AssistActivity;->setApiObject(Lcom/tencent/connect/common/BaseApi;)V
sget v0, Lcom/tencent/connect/common/BaseApi;->sRequestCode:I
add-int/lit8 v1, v0, 0x1
sput v1, Lcom/tencent/connect/common/BaseApi;->sRequestCode:I
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mActivityIntent:Landroid/content/Intent;
const-string/jumbo v2, "key_request_code"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/connect/common/BaseApi;->mTaskList:Ljava/util/List;
new-instance v2, Lcom/tencent/connect/common/BaseApi$ApiTask;
invoke-direct {v2, p0, v0, p2}, Lcom/tencent/connect/common/BaseApi$ApiTask;-><init>(Lcom/tencent/connect/common/BaseApi;ILcom/tencent/tauth/IUiListener;)V
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/tencent/connect/common/BaseApi;->getAssitIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method