.class Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiEmailRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;

.field private final synthetic val$md5_password:Ljava/lang/String;

.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;

    iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->val$md5_password:Ljava/lang/String;

    iput-object p5, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 5
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v2, "email"

    iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;

    #getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->mEmail:Ljava/lang/String;
    invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->val$md5_password:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponse(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string/jumbo v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    new-instance v3, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;

    const-string/jumbo v4, "email"

    invoke-direct {v3, p1, v4}, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;->access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailRegister;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailRegister$1;->onErrorResponse(Ljava/lang/Exception;)V

    goto :goto_25
.end method
