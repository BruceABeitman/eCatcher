.class public Lcom/pinguo/share/bind/SinaBinder;
.super Ljava/lang/Object;
.source "SinaBinder.java"
.field public static APPKEY:Ljava/lang/String; = null
.field public static APPSECRET:Ljava/lang/String; = null
.field public static MSG_CANCELLED:Ljava/lang/String; = null
.field public static MSG_FAILED:Ljava/lang/String; = null
.field public static MSG_SUCCESSED:Ljava/lang/String; = null
.field public static REDIRECT_URL:Ljava/lang/String; = null
.field public static final SCOPE:Ljava/lang/String; = ""
.field public static final SITE_CODE:Ljava/lang/String; = "sina"
.field public static final TAG:Ljava/lang/String; = "SinaBinder"
.field public static mBindBySso:Z
.field public static mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "3555837032"
sput-object v0, Lcom/pinguo/share/bind/SinaBinder;->APPKEY:Ljava/lang/String;
const-string/jumbo v0, "0b0bb9a659cd6fbdccd17024e3007e54"
sput-object v0, Lcom/pinguo/share/bind/SinaBinder;->APPSECRET:Ljava/lang/String;
const-string/jumbo v0, "http://dispatcher.camera360.us"
sput-object v0, Lcom/pinguo/share/bind/SinaBinder;->REDIRECT_URL:Ljava/lang/String;
const-string/jumbo v0, "Sso login successfully"
sput-object v0, Lcom/pinguo/share/bind/SinaBinder;->MSG_SUCCESSED:Ljava/lang/String;
const-string/jumbo v0, "Sso login failed"
sput-object v0, Lcom/pinguo/share/bind/SinaBinder;->MSG_FAILED:Ljava/lang/String;
const-string/jumbo v0, "Sso login cancelled"
sput-object v0, Lcom/pinguo/share/bind/SinaBinder;->MSG_CANCELLED:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isSinaSite(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
const-string/jumbo v0, "sina"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
goto :goto_7
.end method
.method public static onActivityResult(IILandroid/content/Intent;)V
.registers 4
sget-object v0, Lcom/pinguo/share/bind/SinaBinder;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
if-eqz v0, :cond_9
sget-object v0, Lcom/pinguo/share/bind/SinaBinder;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
invoke-virtual {v0, p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V
:cond_9
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/share/bind/SinaBinder;->mBindBySso:Z
return-void
.end method
.method public static setAppKey(Ljava/lang/String;)V
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
sput-object p0, Lcom/pinguo/share/bind/SinaBinder;->APPKEY:Ljava/lang/String;
goto :goto_6
.end method
.method public static setAppSecret(Ljava/lang/String;)V
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
sput-object p0, Lcom/pinguo/share/bind/SinaBinder;->APPSECRET:Ljava/lang/String;
goto :goto_6
.end method
.method public static setRedirectUrl(Ljava/lang/String;)V
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
sput-object p0, Lcom/pinguo/share/bind/SinaBinder;->REDIRECT_URL:Ljava/lang/String;
goto :goto_6
.end method
.method public static validateSina(Landroid/content/Context;)Z
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const-string/jumbo v4, "com.sina.weibo"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
if-eqz v1, :cond_18
iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
:try_end_12
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_1a
const/16 v4, 0xbe
if-lt v3, v4, :cond_17
const/4 v2, 0x1
:cond_17
:goto_17
return v2
:cond_18
const/4 v2, 0x0
goto :goto_17
:catch_1a
move-exception v0
const/4 v2, 0x0
goto :goto_17
.end method
.method public ssoLogin(Landroid/app/Activity;Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;)V
.registers 8
const/4 v2, 0x1
sput-boolean v2, Lcom/pinguo/share/bind/SinaBinder;->mBindBySso:Z
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Lcom/sina/weibo/sdk/auth/WeiboAuth;
sget-object v2, Lcom/pinguo/share/bind/SinaBinder;->APPKEY:Ljava/lang/String;
sget-object v3, Lcom/pinguo/share/bind/SinaBinder;->REDIRECT_URL:Ljava/lang/String;
const-string/jumbo v4, ""
invoke-direct {v1, v0, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
invoke-direct {v2, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V
sput-object v2, Lcom/pinguo/share/bind/SinaBinder;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
sget-object v2, Lcom/pinguo/share/bind/SinaBinder;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
new-instance v3, Lcom/pinguo/share/bind/SinaBinder$AuthListener;
invoke-direct {v3, p0, p2}, Lcom/pinguo/share/bind/SinaBinder$AuthListener;-><init>(Lcom/pinguo/share/bind/SinaBinder;Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;)V
invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
return-void
.end method