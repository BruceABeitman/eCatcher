.class Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiSsoLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->access$0(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v3, "tokenData"

    iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    iget-object v4, v4, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mTokenData:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "siteCode"

    iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mSiteCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->access$1(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sig"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_32
    const-string/jumbo v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "request url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->val$url:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_4e} :catch_4f

    :goto_4e
    return-object v1

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4e
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->access$3(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponse(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    new-instance v3, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;

    iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mSiteCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->access$1(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->access$2(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->access$3(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    goto :goto_12
.end method
