.class public Lcom/pinguo/camera360/login/StartLoginPageAdapter;
.super Ljava/lang/Object;
.source "StartLoginPageAdapter.java"


# static fields
.field public static final CONTEXT_DATA:Ljava/lang/String; = "context_data"

.field public static final EFFECT_POSITION_DEFAULT:I = -0x3e7

.field public static final REQUEST_CODE_NONE:I = 0x1b9e


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLoginConfig(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/login/model/LoginConfig;->getInstance()Lcom/pinguo/camera360/login/model/LoginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/LoginConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/login/model/LoginConfig;->init(Landroid/content/Context;)V

    const-string/jumbo v3, "5dab06e7a53740ea9b78"

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/login/model/LoginConfig;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/login/model/LoginConfig;->setChannel(Ljava/lang/String;)V

    new-instance v2, Lcom/pinguo/camera360/login/model/SinaSso;

    invoke-direct {v2}, Lcom/pinguo/camera360/login/model/SinaSso;-><init>()V

    const-string/jumbo v3, "3555837032"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/model/SinaSso;->setAppkey(Ljava/lang/String;)V

    const-string/jumbo v3, "0b0bb9a659cd6fbdccd17024e3007e54"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/model/SinaSso;->setAppsecret(Ljava/lang/String;)V

    const-string/jumbo v3, "http://dispatcher.camera360.us"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/model/SinaSso;->setRedirecturl(Ljava/lang/String;)V

    const-string/jumbo v3, "http://share.camera360.com"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/model/SinaSso;->setAuth(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/login/model/LoginConfig;->getInstance()Lcom/pinguo/camera360/login/model/LoginConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/login/model/LoginConfig;->setSinaSso(Lcom/pinguo/camera360/login/model/SinaSso;)V

    new-instance v1, Lcom/pinguo/camera360/login/model/QQSso;

    invoke-direct {v1}, Lcom/pinguo/camera360/login/model/QQSso;-><init>()V

    const-string/jumbo v3, "100303003"

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/login/model/QQSso;->setAppkey(Ljava/lang/String;)V

    const-string/jumbo v3, "0b0bb9a659cd6fbdccd17024e3007e54"

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/login/model/QQSso;->setAppsecret(Ljava/lang/String;)V

    const-string/jumbo v3, "http://share.camera360.com"

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/login/model/QQSso;->setAuth(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/LoginConfig;->setQQSso(Lcom/pinguo/camera360/login/model/QQSso;)V

    goto :goto_e
.end method

.method public static launchLoginPageAdapte(Landroid/app/Activity;II)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/login/PGLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "context_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
