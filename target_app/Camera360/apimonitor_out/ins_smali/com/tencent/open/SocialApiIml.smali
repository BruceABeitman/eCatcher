.class public Lcom/tencent/open/SocialApiIml;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.field private static final a:Ljava/lang/String;
.field private b:Landroid/app/Activity;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/tencent/open/SocialApiIml;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/open/SocialApiIml;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;
.registers 8
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
sget-object v1, Lcom/tencent/connect/common/Constants;->PACKAGE_QZONE:Ljava/lang/String;
const-string/jumbo v2, "com.tencent.open.agent.AgentActivity"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v1, Lcom/tencent/open/SocialApiIml$b;
invoke-direct {v1}, Lcom/tencent/open/SocialApiIml$b;-><init>()V
iput-object v0, v1, Lcom/tencent/open/SocialApiIml$b;->a:Landroid/content/Intent;
iput-object p1, v1, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
iput-object p3, v1, Lcom/tencent/open/SocialApiIml$b;->d:Ljava/lang/String;
iput-object p4, v1, Lcom/tencent/open/SocialApiIml$b;->e:Lcom/tencent/tauth/IUiListener;
iput-object p2, v1, Lcom/tencent/open/SocialApiIml$b;->b:Ljava/lang/String;
return-object v1
.end method
.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 9
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->handleIntentWithAgent "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " params="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " activityIntent="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "key_action"
invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v0, "key_params"
invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
iput-object p2, p0, Lcom/tencent/open/SocialApiIml;->mActivityIntent:Landroid/content/Intent;
invoke-virtual {p0, p1, p5}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
.registers 14
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->handleIntent "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " params="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " activityIntent="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_3c
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
:goto_3b
return-void
:cond_3c
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v0
if-nez p7, :cond_53
const-string/jumbo v1, "C_LoginH5"
invoke-virtual {v0, v1}, Lcom/tencent/utils/OpenConfig;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_60
:cond_53
const/4 v0, 0x1
:goto_54
if-eqz v0, :cond_62
move-object v0, p0
move-object v1, p1
move-object v2, p3
move-object v3, p4
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
goto :goto_3b
:cond_60
const/4 v0, 0x0
goto :goto_54
:cond_62
invoke-virtual {p0, p1, p4, p6}, Lcom/tencent/open/SocialApiIml;->handleDownloadLastestQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
goto :goto_3b
.end method
.method private a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
const-string/jumbo v0, "com.tencent.open.agent.voice"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/not_support.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-nez v2, :cond_4f
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->a()Z
move-result v0
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-nez v0, :cond_3c
:cond_28
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
const-string/jumbo v1, "\u8bf7\u7a0d\u5019"
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_3c
const-string/jumbo v0, "action_voice"
invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;
move-result-object v0
const-string/jumbo v1, "action_voice"
new-instance v2, Lcom/tencent/open/SocialApiIml$a;
invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V
invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
:goto_4e
return-void
:cond_4f
const-string/jumbo v3, "action_voice"
const/4 v7, 0x1
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
goto :goto_4e
.end method
.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 13
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
const-string/jumbo v0, "com.tencent.open.agent.SocialFriendChooser"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
if-nez v2, :cond_12
const-string/jumbo v0, "com.tencent.open.agent.RequestFreegiftActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
:cond_12
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
const-string/jumbo v0, "action_ask"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_42
const-string/jumbo v0, "type"
const-string/jumbo v1, "request"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
:goto_2b
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const/4 v7, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, p2
move-object v4, p3
move-object v6, p4
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
return-void
:cond_42
const-string/jumbo v0, "action_gift"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
const-string/jumbo v0, "type"
const-string/jumbo v1, "freegift"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2b
.end method
.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 13
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->handleIntentWithH5 "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " params="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "com.tencent.open.agent.AgentActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v6
new-instance v0, Lcom/tencent/open/SocialApiIml$c;
move-object v1, p0
move-object v2, p5
move-object v3, p2
move-object v4, p4
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml$c;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
const-string/jumbo v1, "com.tencent.open.agent.EncryTokenActivity"
invoke-virtual {p0, v1}, Lcom/tencent/open/SocialApiIml;->getTargetActivityIntent(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
if-eqz v1, :cond_9c
if-eqz v6, :cond_9c
invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v2
if-eqz v2, :cond_9c
invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v2
if-eqz v2, :cond_9c
invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v2
invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v3
invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9c
const-string/jumbo v2, "oauth_consumer_key"
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v2, "openid"
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v2, "access_token"
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v2, "key_action"
const-string/jumbo v3, "action_check_token"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iput-object v1, p0, Lcom/tencent/open/SocialApiIml;->mActivityIntent:Landroid/content/Intent;
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->hasActivityForIntent()Z
move-result v1
if-eqz v1, :cond_9b
invoke-virtual {p0, p1, v0}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
:goto_9b
:cond_9b
return-void
:cond_9c
const-string/jumbo v1, "tencent&sdk&qazxc***14969%%"
const-string/jumbo v2, "qzone3.4"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/tencent/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
:try_start_da
const-string/jumbo v3, "encry_token"
invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_e0
:try_end_e0
.catch Lorg/json/JSONException; {:try_start_da .. :try_end_e0} :catch_e4
invoke-virtual {v0, v2}, Lcom/tencent/open/SocialApiIml$c;->onComplete(Ljava/lang/Object;)V
goto :goto_9b
:catch_e4
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_e0
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 12
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "OpenUi, showDialog --start"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
const-string/jumbo v0, "oauth_consumer_key"
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z
move-result v0
if-eqz v0, :cond_2c
const-string/jumbo v0, "access_token"
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2c
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3a
const-string/jumbo v1, "openid"
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_start_3a
:cond_3a
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v1, "pfStore"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "pf"
const-string/jumbo v2, "openmobile_android"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "pf"
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_54
:try_end_54
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_54} :catch_9a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p3}, Lcom/tencent/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "OpenUi, showDialog TDialog"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "action_challenge"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_82
const-string/jumbo v0, "action_brag"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a8
:cond_82
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "OpenUi, showDialog PKDialog"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/tencent/open/PKDialog;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
move-object v2, p2
move-object v4, p5
invoke-direct/range {v0 .. v5}, Lcom/tencent/open/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->show()V
:goto_99
return-void
:catch_9a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "pf"
const-string/jumbo v1, "openmobile_android"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_54
:cond_a8
new-instance v0, Lcom/tencent/open/TDialog;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
iget-object v5, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
move-object v2, p2
move-object v4, p5
invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V
goto :goto_99
.end method
.method static synthetic a(Lcom/tencent/open/SocialApiIml;)V
.registers 1
invoke-direct {p0}, Lcom/tencent/open/SocialApiIml;->b()V
return-void
.end method
.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/tencent/open/SocialApiIml;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method static synthetic b(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
return-object v0
.end method
.method private b()V
.registers 2
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
:cond_1c
return-void
.end method
.method static synthetic c(Lcom/tencent/open/SocialApiIml;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
return-object v0
.end method
.method protected a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 7
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
sget-object v1, Lcom/tencent/connect/common/Constants;->PACKAGE_QZONE:Ljava/lang/String;
const-string/jumbo v2, "com.tencent.open.agent.AgentActivity"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "key_action"
const-string/jumbo v2, "action_check"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "apiName"
invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "key_params"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mActivityIntent:Landroid/content/Intent;
invoke-virtual {p0, p1, p3}, Lcom/tencent/open/SocialApiIml;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method protected a()Z
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "com.tencent.open.agent.CheckFunctionActivity"
sget-object v2, Lcom/tencent/connect/common/Constants;->PACKAGE_QZONE:Ljava/lang/String;
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/tencent/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v0
return v0
.end method
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 5
const-string/jumbo v0, "action_ask"
invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
const-string/jumbo v0, "com.tencent.open.agent.BragActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v3, "action_brag"
const/4 v7, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
return-void
.end method
.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
const-string/jumbo v0, "com.tencent.open.agent.ChallengeActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v3, "action_challenge"
const/4 v7, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
return-void
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
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
invoke-static {v3, v2}, Lcom/tencent/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_2a
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v4, "4.7"
invoke-static {v3, v4}, Lcom/tencent/utils/SystemUtils;->compareQQVersion(Landroid/content/Context;Ljava/lang/String;)I
move-result v3
if-ltz v3, :cond_2a
move-object v0, v2
:goto_29
:cond_29
return-object v0
:cond_2a
iget-object v2, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
invoke-static {v2, v0}, Lcom/tencent/utils/SystemUtils;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_57
iget-object v2, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
sget-object v3, Lcom/tencent/connect/common/Constants;->PACKAGE_QZONE:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/tencent/utils/SystemUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "4.2"
invoke-static {v2, v3}, Lcom/tencent/utils/SystemUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
move-result v2
if-ltz v2, :cond_57
iget-object v2, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v3
invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/tencent/connect/common/Constants;->SIGNATRUE_QZONE:Ljava/lang/String;
invoke-static {v2, v3, v4}, Lcom/tencent/utils/SystemUtils;->isAppSignatureValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_29
move-object v0, v1
goto :goto_29
:cond_57
move-object v0, v1
goto :goto_29
.end method
.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 5
const-string/jumbo v0, "action_gift"
invoke-direct {p0, p1, v0, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method public grade(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
const-string/jumbo v0, "version"
invoke-static {p1}, Lcom/tencent/utils/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "com.tencent.open.agent.AppGradeActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
const-string/jumbo v5, "http://qzs.qq.com/open/mobile/rate/sdk_rate.html?"
if-nez v2, :cond_4c
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->a()Z
move-result v0
if-eqz v0, :cond_4c
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
const-string/jumbo v1, "\u8bf7\u7a0d\u5019..."
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
const-string/jumbo v0, "action_grade"
invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;
move-result-object v0
const-string/jumbo v1, "action_grade"
new-instance v2, Lcom/tencent/open/SocialApiIml$a;
invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V
invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
:goto_4b
return-void
:cond_4c
const-string/jumbo v3, "action_grade"
const/4 v7, 0x1
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
goto :goto_4b
.end method
.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
const-string/jumbo v0, "com.tencent.open.agent.SocialFriendChooser"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
if-nez v2, :cond_12
const-string/jumbo v0, "com.tencent.open.agent.AppInvitationActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
:cond_12
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v3, "action_invite"
const/4 v7, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
return-void
.end method
.method public reactive(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
const-string/jumbo v0, "com.tencent.open.agent.SocialFriendChooser"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
if-nez v2, :cond_12
const-string/jumbo v0, "com.tencent.open.agent.ReactiveActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
:cond_12
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/reactive/sdk_reactive.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-nez v2, :cond_5e
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->a()Z
move-result v0
if-eqz v0, :cond_5e
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
const-string/jumbo v1, "\u8bf7\u7a0d\u5019..."
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
const-string/jumbo v0, "type"
const-string/jumbo v1, "reactive"
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "action_reactive"
invoke-direct {p0, p2, v0, v5, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Lcom/tencent/open/SocialApiIml$b;
move-result-object v0
const-string/jumbo v1, "action_reactive"
new-instance v2, Lcom/tencent/open/SocialApiIml$a;
invoke-direct {v2, p0, v0}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V
invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
:goto_5d
return-void
:cond_5e
const-string/jumbo v0, "img"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "sendImg"
invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "type"
const-string/jumbo v1, "reactive"
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "img"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
const-string/jumbo v3, "action_reactive"
const/4 v7, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
goto :goto_5d
.end method
.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 12
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
const-string/jumbo v0, "com.tencent.open.agent.SendStoryActivity"
invoke-virtual {p0, v0}, Lcom/tencent/open/SocialApiIml;->getAgentIntentWithTarget(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mContext:Landroid/content/Context;
const-string/jumbo v3, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"
invoke-virtual {v0, v1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v3, "action_story"
const/4 v7, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v7}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
return-void
.end method
.method public voice(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 8
iput-object p1, p0, Lcom/tencent/open/SocialApiIml;->b:Landroid/app/Activity;
invoke-virtual {p0}, Lcom/tencent/open/SocialApiIml;->composeActivityParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
const-string/jumbo v0, "version"
invoke-static {p1}, Lcom/tencent/utils/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/tencent/open/c;->a()Z
move-result v0
if-nez v0, :cond_2a
new-instance v0, Lcom/tencent/tauth/UiError;
const/16 v1, -0xc
const-string/jumbo v2, "\u68c0\u6d4b\u4e0d\u5230SD\u5361\uff0c\u65e0\u6cd5\u53d1\u9001\u8bed\u97f3\uff01"
const-string/jumbo v3, "\u68c0\u6d4b\u4e0d\u5230SD\u5361\uff0c\u65e0\u6cd5\u53d1\u9001\u8bed\u97f3\uff01"
invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
:goto_29
return-void
:cond_2a
const-string/jumbo v0, "image_date"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_66
const-string/jumbo v0, "image_date"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-eqz v0, :cond_66
new-instance v1, Landroid/app/ProgressDialog;
invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
const-string/jumbo v2, "\u8bf7\u7a0d\u5019..."
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/tencent/open/SocialApiIml;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
new-instance v1, Lcom/tencent/open/c;
new-instance v2, Lcom/tencent/open/SocialApiIml$1;
invoke-direct {v2, p0, p2, p1, p3}, Lcom/tencent/open/SocialApiIml$1;-><init>(Lcom/tencent/open/SocialApiIml;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
invoke-direct {v1, v2}, Lcom/tencent/open/c;-><init>(Lcom/tencent/open/c$a;)V
const/4 v2, 0x1
new-array v2, v2, [Landroid/graphics/Bitmap;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/tencent/open/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_29
:cond_66
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
goto :goto_29
.end method
.method public writeEncryToken(Landroid/content/Context;)V
.registers 10
const/4 v7, 0x1
const-string/jumbo v1, "tencent&sdk&qazxc***14969%%"
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "qzone3.4"
const/4 v0, 0x0
if-eqz v2, :cond_b9
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_b9
if-eqz v3, :cond_b9
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_b9
if-eqz v4, :cond_b9
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_b9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_54
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';localStorage[\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/tencent/open/SocialApiIml;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"]=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\";</script></head><body></body></html>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v1
const-string/jumbo v3, "http://qzs.qq.com"
invoke-virtual {v1, p1, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v3, "text/html"
const-string/jumbo v4, "utf-8"
move-object v5, v1
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_b9
move-object v1, v0
goto :goto_54
.end method