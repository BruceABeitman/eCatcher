.class Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiUserInfo;

.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiUserInfo;

    iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiUserInfo;

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->access$1(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponse(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiUserInfo;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    new-instance v3, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;

    const-string/jumbo v4, ""

    invoke-direct {v3, p1, v4}, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->access$0(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiUserInfo;

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiUserInfo$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    #calls: Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/login/i/user/ApiUserInfo;->access$1(Lcom/pinguo/camera360/login/i/user/ApiUserInfo;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    goto :goto_f
.end method
