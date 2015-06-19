.class Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;
.super Ljava/lang/Object;
.source "ApiCreateOrder.java"

# interfaces
.implements Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

.field private final synthetic val$createResult:Lcom/pinguo/lib/os/AsyncResult;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;Landroid/os/Handler;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    iput-object p2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendProgressMessage(II)V
    .registers 8

    invoke-static {}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bytesWritten="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "totalSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3a

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0

    mul-double/2addr v1, v3

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v0, v1

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {v2, p0, v3, v0}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;-><init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;Lcom/pinguo/lib/os/AsyncResult;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    return-void
.end method
