.class Lcom/pinguo/share/bind/QQBinder$1;
.super Ljava/lang/Object;
.source "QQBinder.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/bind/QQBinder;->ssoLogin(Landroid/app/Activity;Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/bind/QQBinder;

.field private final synthetic val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/QQBinder;Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/bind/QQBinder$1;->this$0:Lcom/pinguo/share/bind/QQBinder;

    iput-object p2, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    invoke-interface {v0}, Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;->onCancelled()V

    :cond_9
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 14

    move-object v4, p1

    check-cast v4, Lorg/json/JSONObject;

    :try_start_3
    const-string/jumbo v9, "cx"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ret:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/camera360/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "ret"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "msg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "openid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "expires_in"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v9, "access_token"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_48

    iget-object v9, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    if-eqz v9, :cond_47

    iget-object v9, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    invoke-interface {v9, v5}, Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v9, "access_token"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "expires_in"

    invoke-virtual {v8, v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v9, "uid"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    if-eqz v9, :cond_47

    iget-object v9, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;->onSuccessed(Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_6c} :catch_6d

    goto :goto_47

    :catch_6d
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v9, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    if-eqz v9, :cond_47

    iget-object v9, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    const-string/jumbo v10, "Failed to parse login response json!"

    invoke-interface {v9, v10}, Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_47
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/share/bind/QQBinder$1;->val$callback:Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;->onFailed(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
