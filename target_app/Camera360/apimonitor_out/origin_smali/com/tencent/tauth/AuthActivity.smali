.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field private static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final ACTION_SHARE_TO_QQ:Ljava/lang/String; = "shareToQQ"

.field private static final ACTION_SHARE_TO_QZONE:Ljava/lang/String; = "shareToQzone"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private execAuthCallback(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/tencent/connect/auth/AuthMap;->getInstance()Lcom/tencent/connect/auth/AuthMap;

    move-result-object v0

    const-string/jumbo v1, "serial"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthMap;->get(Ljava/lang/String;)Lcom/tencent/connect/auth/AuthMap$Auth;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string/jumbo v3, "://cancel"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    iget-object v3, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v3}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    :goto_25
    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthMap;->remove(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    return-void

    :cond_2c
    const-string/jumbo v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    const-string/jumbo v4, "access_token"

    iget-object v5, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/tencent/connect/auth/AuthMap;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-static {p1}, Lcom/tencent/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4, v3}, Lcom/tencent/utils/Util;->decodeUrlToJson(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "cb"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/tencent/connect/auth/AuthDialog;->callJs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_68
    iget-object v4, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v4, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    goto :goto_25
.end method

.method private execShareToQQCallback(Landroid/os/Bundle;)V
    .registers 8

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/utils/TemporaryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    :goto_10
    return-void

    :cond_11
    check-cast v0, Lcom/tencent/tauth/IUiListener;

    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_10

    :cond_31
    const-string/jumbo v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    new-instance v2, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x6

    const-string/jumbo v4, "unknown error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_2d

    :cond_5b
    const-string/jumbo v3, "complete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-nez v1, :cond_98

    const-string/jumbo v1, "{\"ret\": 0}"

    move-object v2, v1

    :goto_6a
    :try_start_6a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_72} :catch_73

    goto :goto_2d

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x4

    const-string/jumbo v4, "json error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_2d

    :cond_98
    move-object v2, v1

    goto :goto_6a
.end method

.method private handleActionUri(Landroid/net/Uri;)V
    .registers 6

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_f
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/utils/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    invoke-direct {p0, v1, v0}, Lcom/tencent/tauth/AuthActivity;->execAuthCallback(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_12

    :cond_35
    const-string/jumbo v3, "shareToQQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string/jumbo v3, "shareToQzone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_47
    invoke-direct {p0, v1}, Lcom/tencent/tauth/AuthActivity;->execShareToQQCallback(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_4b
    invoke-direct {p0, v1, v0}, Lcom/tencent/tauth/AuthActivity;->execAuthCallback(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tauth/AuthActivity;->handleActionUri(Landroid/net/Uri;)V

    return-void
.end method
