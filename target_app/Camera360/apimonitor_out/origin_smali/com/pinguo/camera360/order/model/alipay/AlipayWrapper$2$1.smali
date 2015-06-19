.class Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;
.super Ljava/lang/Thread;
.source "AlipayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->onResponse(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;

.field private final synthetic val$prepayResponse:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->this$1:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;

    iput-object p2, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->val$prepayResponse:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$3()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prev alipay.pay(),"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->val$prepayResponse:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;

    iget-object v5, v5, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;->data:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse$Data;

    iget-object v5, v5, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse$Data;->packageValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/sdk/AliPay;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->this$1:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
    invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    move-result-object v3

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$2(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->this$1:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
    invoke-static {v4}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    move-result-object v4

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$4(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/alipay/android/app/sdk/AliPay;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->val$prepayResponse:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;->data:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse$Data;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse$Data;->packageValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/sdk/AliPay;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-static {}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$3()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "post alipay.pay(),null"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    return-void

    :cond_51
    invoke-static {}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$3()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "post alipay.pay(),"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2$1;->this$1:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
    invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;

    move-result-object v3

    #getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$4(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_50
.end method
