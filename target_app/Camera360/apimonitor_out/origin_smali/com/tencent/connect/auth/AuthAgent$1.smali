.class Lcom/tencent/connect/auth/AuthAgent$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthAgent;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)V

    :goto_7
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthAgent;->f(Lcom/tencent/connect/auth/AuthAgent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthAgent;->writeEncryToken(Landroid/content/Context;)V

    return-void

    :cond_13
    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_16
    const-string/jumbo v1, "encry_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1c} :catch_32

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenUi, EncrytokenListener() onComplete validToken"

    invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v1, v0}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;)V

    goto :goto_7

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v2, "openSDK_LOG"

    const-string/jumbo v3, "OpenUi, EncrytokenListener() onComplete error"

    invoke-static {v2, v3, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_40
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "OpenUi, EncrytokenListener() onComplete relogin"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)V

    goto :goto_7
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 4

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "AuthAgent, EncrytokenListener() onError relogin"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$1;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)V

    return-void
.end method
