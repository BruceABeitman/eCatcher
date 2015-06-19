.class Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "AlipayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->pay(Ljava/lang/String;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

.field private final synthetic val$alipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;

.field private final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    iput-object p4, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->val$oid:Ljava/lang/String;

    iput-object p5, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->val$alipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    return-object v0
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

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$2(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v2, "oid"

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->val$oid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
    invoke-static {v0}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayError(ILjava/lang/String;)V

    return-void
.end method

.method protected onResponse(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;)V
    .registers 5

    iget v0, p1, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;->status:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->val$alipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;

    invoke-interface {v0}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayPrevExecute()V

    new-instance v0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;-><init>(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->start()V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
    invoke-static {v0}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;

    move-result-object v0

    iget v1, p1, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;->status:I

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayError(ILjava/lang/String;)V

    goto :goto_13
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->onResponse(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;)V

    return-void
.end method
