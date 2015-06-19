.class Lcom/pinguo/share/bind/SinaBinder$AuthListener;
.super Ljava/lang/Object;
.source "SinaBinder.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/bind/SinaBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthListener"
.end annotation


# instance fields
.field private mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

.field final synthetic this$0:Lcom/pinguo/share/bind/SinaBinder;


# direct methods
.method public constructor <init>(Lcom/pinguo/share/bind/SinaBinder;Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->this$0:Lcom/pinguo/share/bind/SinaBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    invoke-interface {v0}, Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;->onCancelled()V

    :cond_9
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 12

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v8

    if-eqz v8, :cond_72

    const-string/jumbo v8, "uid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "access_token"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "expires_in"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_34

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_34

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3f

    :cond_34
    iget-object v8, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    if-eqz v8, :cond_3f

    iget-object v8, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    sget-object v9, Lcom/pinguo/share/bind/SinaBinder;->MSG_FAILED:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    :cond_3f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_44
    const-string/jumbo v8, "access_token"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "expires_in"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "refresh_token"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "uid"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_5f} :catch_6d

    :goto_5f
    iget-object v8, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    if-eqz v8, :cond_6c

    iget-object v8, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;->onSuccessed(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void

    :catch_6d
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5f

    :cond_72
    const-string/jumbo v8, "code"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    if-eqz v8, :cond_6c

    iget-object v8, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    sget-object v9, Lcom/pinguo/share/bind/SinaBinder;->MSG_FAILED:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_6c
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/share/bind/SinaBinder$AuthListener;->mCallback:Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
