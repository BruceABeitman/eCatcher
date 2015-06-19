.class Lcom/pinguo/camera360/order/model/WXPayWrapper$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "WXPayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/WXPayWrapper;->pay(Ljava/lang/String;Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/WXPayWrapper;

.field private final synthetic val$oid:Ljava/lang/String;

.field private final synthetic val$payResult:Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/WXPayWrapper;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/WXPayWrapper;

    iput-object p4, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$oid:Ljava/lang/String;

    iput-object p5, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$payResult:Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;

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

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/WXPayWrapper;

    #getter for: Lcom/pinguo/camera360/order/model/WXPayWrapper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$0(Lcom/pinguo/camera360/order/model/WXPayWrapper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v2, "oid"

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$oid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$payResult:Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;->onWXPayError(ILjava/lang/String;)V

    return-void
.end method

.method protected onResponse(Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;)V
    .registers 7

    iget v2, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->status:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_ca

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$payResult:Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;

    invoke-interface {v2}, Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;->onWXPayPrevExecute()V

    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    sget-object v2, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    const-string/jumbo v2, "1218623101"

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;->prepayid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;->noncestr:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;->timestamp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sign="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;->packagevalue:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;->sign:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$oid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->extData:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/WXPayWrapper;

    #getter for: Lcom/pinguo/camera360/order/model/WXPayWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v2}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$1(Lcom/pinguo/camera360/order/model/WXPayWrapper;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v1

    invoke-static {}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "res="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sign="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c9
    return-void

    :cond_ca
    invoke-static {}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->access$2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->val$payResult:Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;

    iget v3, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->status:I

    iget-object v4, p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;->message:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;->onWXPayError(ILjava/lang/String;)V

    goto :goto_c9
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;->onResponse(Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;)V

    return-void
.end method
