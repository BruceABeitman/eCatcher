.class public Lcom/pinguo/share/bind/QQBinder;
.super Ljava/lang/Object;
.source "QQBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;
    }
.end annotation


# static fields
.field public static APPKEY:Ljava/lang/String; = null

.field public static APPSECRET:Ljava/lang/String; = null

.field public static final SCOPE:Ljava/lang/String; = "all"

.field public static final SITE_CODE:Ljava/lang/String; = "qzone"

.field private static final TAG:Ljava/lang/String; = "QQBinder"

.field public static mSSOLogin:Z


# instance fields
.field private mTencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "100303003"

    sput-object v0, Lcom/pinguo/share/bind/QQBinder;->APPKEY:Ljava/lang/String;

    const-string/jumbo v0, "7a32c51df7e23c98cb789cba8f42d21d"

    sput-object v0, Lcom/pinguo/share/bind/QQBinder;->APPSECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkTencentInstance(Landroid/app/Activity;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_c

    sget-object v0, Lcom/pinguo/share/bind/QQBinder;->APPKEY:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/bind/QQBinder;->mTencent:Lcom/tencent/tauth/Tencent;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private init(Landroid/app/Activity;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/share/bind/QQBinder;->checkTencentInstance(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isQQSite(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string/jumbo v0, "qzone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sput-object p0, Lcom/pinguo/share/bind/QQBinder;->APPKEY:Ljava/lang/String;

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
    sput-object p0, Lcom/pinguo/share/bind/QQBinder;->APPSECRET:Ljava/lang/String;

    goto :goto_6
.end method

.method public static validateQzone(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.tencent.mobileqq"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_1b

    const/16 v4, 0x32

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    :cond_18
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18

    :catch_1b
    move-exception v0

    const/4 v2, 0x0

    goto :goto_18
.end method


# virtual methods
.method public ssoLogin(Landroid/app/Activity;Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/pinguo/share/bind/QQBinder;->init(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_e

    const-string/jumbo v0, "Failed to instance Tencent objs!"

    invoke-interface {p2, v0}, Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v3, Lcom/pinguo/share/bind/QQBinder$1;

    invoke-direct {v3, p0, p2}, Lcom/pinguo/share/bind/QQBinder$1;-><init>(Lcom/pinguo/share/bind/QQBinder;Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    :cond_21
    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string/jumbo v2, "all"

    sget-object v4, Lcom/pinguo/share/bind/QQBinder;->APPKEY:Ljava/lang/String;

    sget-object v5, Lcom/pinguo/share/bind/QQBinder;->APPKEY:Ljava/lang/String;

    const-string/jumbo v6, "Camera360"

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tauth/Tencent;->loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
