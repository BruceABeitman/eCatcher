.class public Lcom/pinguo/camera360/login/ui/PGSsoActivity;
.super Landroid/app/Activity;
.source "PGSsoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;
    }
.end annotation


# static fields
.field private static final MESSAGE_BASE:I = 0x0

.field private static final MESSAGE_DISMISS_WAIT:I = 0x2

.field private static final MESSAGE_SHOW_WAIT:I = 0x1

.field public static final SITE_SSO:Ljava/lang/String; = "site_sso"


# instance fields
.field private mHandler:Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;

.field private mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/ui/PGSsoActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method private processSsoTokenData(Landroid/content/Intent;)Ljava/lang/String;
    .registers 11

    new-instance v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;

    invoke-direct {v5}, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "access_token"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "expires_in"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "refresh_token"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "uid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->uid:Ljava/lang/String;

    iput-object v0, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->access_token:Ljava/lang/String;

    iput-object v4, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->refresh_token:Ljava/lang/String;

    iput-object v2, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->expires_in:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_45

    :goto_39
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;

    invoke-virtual {v3, v5, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const v1, 0x80cd

    if-ne p1, v1, :cond_3a

    if-eqz p2, :cond_9

    if-nez p3, :cond_c

    :cond_9
    invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->finish()V

    :cond_c
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3a

    const-string/jumbo v1, "error"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    const-string/jumbo v1, "error_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_3e

    const-string/jumbo v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sina sso error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->finish()V

    :cond_3a
    :goto_3a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_3e
    invoke-direct {p0, p3}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->processSsoTokenData(Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_3a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "site_sso"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "site="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sina"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-static {}, Lcom/pinguo/camera360/login/model/LoginConfig;->getInstance()Lcom/pinguo/camera360/login/model/LoginConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/LoginConfig;->getSinaSso()Lcom/pinguo/camera360/login/model/SinaSso;

    move-result-object v2

    new-instance v0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;-><init>(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)V

    invoke-virtual {v2, p0, v0}, Lcom/pinguo/camera360/login/model/SinaSso;->bindRemoteSSOService(Landroid/app/Activity;Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;)V

    :cond_3d
    new-instance v4, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;-><init>(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)V

    iput-object v4, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->mHandler:Lcom/pinguo/camera360/login/ui/PGSsoActivity$HandlerProcess;

    return-void
.end method
