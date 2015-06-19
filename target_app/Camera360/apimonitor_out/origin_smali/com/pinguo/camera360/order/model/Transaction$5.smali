.class Lcom/pinguo/camera360/order/model/Transaction$5;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/Transaction;->updateSwitcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Transaction;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/Transaction;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction$5;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 4
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

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction$5;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    #getter for: Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/pinguo/camera360/order/model/Transaction;->access$0(Lcom/pinguo/camera360/order/model/Transaction;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->access$6()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Transaction$5;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponse(Ljava/lang/String;)V
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, ""

    const/4 v4, 0x0

    const-string/jumbo v2, ""

    :try_start_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "data"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "status"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v8, "message"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_22} :catch_5e

    move-result-object v2

    :goto_23
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_6b

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->access$6()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    move v5, v6

    :goto_48
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v8

    if-eqz v5, :cond_69

    :goto_4e
    invoke-virtual {v8, v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIdPassportOpen(Z)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v6

    new-instance v7, Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;

    invoke-direct {v7, v5}, Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;-><init>(Z)V

    invoke-virtual {v6, v7}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    :goto_5d
    return-void

    :catch_5e
    move-exception v1

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->access$6()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_67
    move v5, v7

    goto :goto_48

    :cond_69
    move v6, v7

    goto :goto_4e

    :cond_6b
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->access$6()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method
