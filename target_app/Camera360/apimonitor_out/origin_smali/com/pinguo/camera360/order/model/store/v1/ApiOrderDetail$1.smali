.class Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "ApiOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;

.field private final synthetic val$detailResult:Lcom/pinguo/lib/os/AsyncResult;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;

    iput-object p4, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->val$detailResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V

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

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;->access$0(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v2, "oid"

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;->mOrderId:Ljava/lang/String;
    invoke-static {v3}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;->access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->val$detailResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onResponse(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->val$detailResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$1;->onResponse(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;)V

    return-void
.end method
