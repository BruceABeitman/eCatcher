.class Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiEmailBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

.field private final synthetic val$md5_password:Ljava/lang/String;

.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 7

    iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

    iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$md5_password:Ljava/lang/String;

    iput-object p5, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

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

    iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v3, "email"

    iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mEmail:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$md5_password:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sig"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2c
    const-string/jumbo v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$url:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_45} :catch_46

    :goto_45
    return-object v1

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_45
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 5

    const-string/jumbo v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4fee\u6539\u6027\u522b\u8fd4\u56de error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponse(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    new-instance v3, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;

    const-string/jumbo v4, ""

    invoke-direct {v3, p1, v4}, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailBind;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    goto :goto_f
.end method