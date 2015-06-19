.class public Lcom/tencent/connect/avatar/QQAvatar;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.field private a:Lcom/tencent/tauth/IUiListener;
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method private a()Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/tencent/connect/avatar/QQAvatar;->mContext:Landroid/content/Context;
const-class v2, Lcom/tencent/connect/avatar/ImageActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
return-object v0
.end method
.method private a(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 6
invoke-direct {p0, p2}, Lcom/tencent/connect/avatar/QQAvatar;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->mActivityIntent:Landroid/content/Intent;
const-string/jumbo v1, "key_action"
const-string/jumbo v2, "action_avatar"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->mActivityIntent:Landroid/content/Intent;
const-string/jumbo v1, "key_params"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
invoke-virtual {p0, p1, v0}, Lcom/tencent/connect/avatar/QQAvatar;->startAssitActivity(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method
.method private a(Landroid/os/Bundle;)V
.registers 5
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
if-eqz v0, :cond_5e
const-string/jumbo v0, "appid"
iget-object v1, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z
move-result v0
if-eqz v0, :cond_2d
const-string/jumbo v0, "keystr"
iget-object v1, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "keytype"
const-string/jumbo v1, "0x80"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2d
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3b
const-string/jumbo v1, "hopenid"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3b
const-string/jumbo v0, "platform"
const-string/jumbo v1, "androidqz"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_start_44
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->mContext:Landroid/content/Context;
const-string/jumbo v1, "pfStore"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "pf"
const-string/jumbo v2, "openmobile_android"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "pf"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_71
:goto_5e
:cond_5e
const-string/jumbo v0, "sdkv"
const-string/jumbo v1, "2.3"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "sdkp"
const-string/jumbo v1, "a"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
:catch_71
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "pf"
const-string/jumbo v1, "openmobile_android"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5e
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 9
const/4 v0, -0x1
if-ne p2, v0, :cond_54
const-string/jumbo v0, "key_error_code"
const/4 v1, 0x0
invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
if-nez v0, :cond_3b
const-string/jumbo v0, "key_response"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_30
:try_start_16
invoke-static {v0}, Lcom/tencent/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
iget-object v2, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
invoke-interface {v2, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:goto_1f
:try_end_1f
.catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v1
iget-object v1, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
new-instance v2, Lcom/tencent/tauth/UiError;
const/4 v3, -0x4
const-string/jumbo v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"
invoke-direct {v2, v3, v4, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
goto :goto_1f
:cond_30
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
goto :goto_1f
:cond_3b
const-string/jumbo v1, "key_error_msg"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "key_error_detail"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
new-instance v4, Lcom/tencent/tauth/UiError;
invoke-direct {v4, v0, v1, v2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
goto :goto_1f
:cond_54
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V
goto :goto_1f
.end method
.method public setAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;I)V
.registers 9
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V
:cond_9
iput-object p3, p0, Lcom/tencent/connect/avatar/QQAvatar;->a:Lcom/tencent/tauth/IUiListener;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v1, "picture"
invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "exitAnim"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v1, "appid"
iget-object v2, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "access_token"
iget-object v2, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "expires_in"
iget-object v2, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getExpireTimeInSecond()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string/jumbo v1, "openid"
iget-object v2, p0, Lcom/tencent/connect/avatar/QQAvatar;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/tencent/connect/avatar/QQAvatar;->a()Landroid/content/Intent;
move-result-object v1
iput-object v1, p0, Lcom/tencent/connect/avatar/QQAvatar;->mActivityIntent:Landroid/content/Intent;
invoke-virtual {p0}, Lcom/tencent/connect/avatar/QQAvatar;->hasActivityForIntent()Z
move-result v1
if-eqz v1, :cond_5f
invoke-direct {p0, p1, v0}, Lcom/tencent/connect/avatar/QQAvatar;->a(Landroid/app/Activity;Landroid/os/Bundle;)V
:cond_5f
return-void
.end method