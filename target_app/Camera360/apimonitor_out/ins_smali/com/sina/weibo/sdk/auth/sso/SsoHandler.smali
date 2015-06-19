.class public Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.super Ljava/lang/Object;
.source "SsoHandler.java"
.field private static final DEFAULT_SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"
.field private static final DEFAULT_WEIBO_REMOTE_SSO_SERVICE_NAME:Ljava/lang/String; = "com.sina.weibo.remotessoservice"
.field private static final REQUEST_CODE_SSO_AUTH:I = 0x80cd
.field private static final TAG:Ljava/lang/String; = "Weibo_SSO_login"
.field private mAuthActivity:Landroid/app/Activity;
.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
.field private mConnection:Landroid/content/ServiceConnection;
.field private mSSOAuthRequestCode:I
.field private mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;
invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
return-void
.end method
.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuth;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
return-object v0
.end method
.method static synthetic access$1(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
return-object v0
.end method
.method static synthetic access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic access$3(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/content/ServiceConnection;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;
return-object v0
.end method
.method static synthetic access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private bindRemoteSSOService(Landroid/content/Context;Ljava/lang/String;)Z
.registers 8
const/4 v2, 0x1
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_14
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_39
:cond_14
const-string/jumbo v1, "com.sina.weibo"
:goto_17
new-instance v0, Landroid/content/Intent;
const-string/jumbo v3, "com.sina.weibo.remotessoservice"
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v3
if-nez v3, :cond_38
new-instance v0, Landroid/content/Intent;
const-string/jumbo v3, "com.sina.weibo.remotessoservice"
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v2
:cond_38
return v2
:cond_39
move-object v1, p2
goto :goto_17
.end method
.method public static isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
.registers 10
const-string/jumbo v4, "activity"
invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
const v4, 0x7fffffff
invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_14
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_1c
const/4 v3, 0x0
:goto_1b
return-object v3
:cond_1c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;
iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;
invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_14
invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ".business.RemoteSSOService"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_14
goto :goto_1b
.end method
.method private startSingleSignOn(Ljava/lang/String;Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x1
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->getAuthInfo()Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->getAuthBundle()Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
const-string/jumbo v3, "_weibo_command_type"
const/4 v4, 0x3
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v3, "_weibo_transaction"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
invoke-static {v3, v2}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-nez v3, :cond_35
const/4 v3, 0x0
:goto_34
return v3
:cond_35
:try_start_35
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
iget v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I
invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_3c
.catch Landroid/content/ActivityNotFoundException; {:try_start_35 .. :try_end_3c} :catch_3e
:goto_3c
move v3, v0
goto :goto_34
:catch_3e
move-exception v1
const/4 v0, 0x0
goto :goto_3c
.end method
.method public authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Ljava/lang/String;)V
.registers 7
iput p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I
iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {p0, v1, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1b
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
:cond_1b
return-void
.end method
.method public authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
.registers 4
const v0, 0x80cd
const/4 v1, 0x0
invoke-virtual {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Ljava/lang/String;)V
return-void
.end method
.method public authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;Ljava/lang/String;)V
.registers 4
const v0, 0x80cd
invoke-virtual {p0, v0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Ljava/lang/String;)V
return-void
.end method
.method public authorizeCallBack(IILandroid/content/Intent;)V
.registers 13
const/4 v8, -0x1
const-string/jumbo v4, "Weibo_SSO_login"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "requestCode: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", resultCode: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", data: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I
if-ne p1, v4, :cond_3b
if-ne p2, v8, :cond_f4
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
invoke-static {v4, p3}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->checkResponseAppLegal(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v4
if-nez v4, :cond_3c
:goto_3b
:cond_3b
return-void
:cond_3c
const-string/jumbo v4, "error"
invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_4c
const-string/jumbo v4, "error_type"
invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:cond_4c
if-eqz v3, :cond_b1
const-string/jumbo v4, "access_denied"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_60
const-string/jumbo v4, "OAuthAccessDeniedException"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6f
:cond_60
const-string/jumbo v4, "Weibo_SSO_login"
const-string/jumbo v5, "Login canceled by user."
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-interface {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V
goto :goto_3b
:cond_6f
const-string/jumbo v4, "error_description"
invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_90
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_90
const-string/jumbo v4, "Weibo_SSO_login"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Login failed: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboDialogException;
invoke-direct {v5, v3, p2, v2}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
goto :goto_3b
:cond_b1
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-static {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
move-result-object v0
if-eqz v0, :cond_e2
invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z
move-result v4
if-eqz v4, :cond_e2
const-string/jumbo v4, "Weibo_SSO_login"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Login Success! "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-interface {v4, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V
goto/16 :goto_3b
:cond_e2
const-string/jumbo v4, "Weibo_SSO_login"
const-string/jumbo v5, "Failed to receive access token by SSO"
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
goto/16 :goto_3b
:cond_f4
if-nez p2, :cond_3b
if-eqz p3, :cond_136
const-string/jumbo v4, "Weibo_SSO_login"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Login failed: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "error"
invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboDialogException;
const-string/jumbo v6, "error"
invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "error_code"
invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v7
const-string/jumbo v8, "failing_url"
invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-direct {v5, v6, v7, v8}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
goto/16 :goto_3b
:cond_136
const-string/jumbo v4, "Weibo_SSO_login"
const-string/jumbo v5, "Login canceled by user."
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-interface {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V
goto/16 :goto_3b
.end method