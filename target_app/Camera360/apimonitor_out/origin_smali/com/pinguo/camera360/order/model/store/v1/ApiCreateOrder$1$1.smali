.class Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;
.super Ljava/lang/Object;
.source "ApiCreateOrder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;->sendProgressMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;

.field private final synthetic val$createResult:Lcom/pinguo/lib/os/AsyncResult;

.field private final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;Lcom/pinguo/lib/os/AsyncResult;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;->this$1:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;

    iput-object p2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    iput p3, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    iget v1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1$1;->val$percent:I

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/os/AsyncResult;->onProgress(I)V

    return-void
.end method
