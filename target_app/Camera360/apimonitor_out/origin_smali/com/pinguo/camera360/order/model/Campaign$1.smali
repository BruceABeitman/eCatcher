.class Lcom/pinguo/camera360/order/model/Campaign$1;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "Campaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/Campaign;->getInfo()Lcom/pinguo/lib/os/AsyncFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncFutureAdapter",
        "<",
        "Lcom/pinguo/camera360/order/model/Campaign$Info;",
        "Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Campaign;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/Campaign;Lcom/pinguo/lib/os/AsyncFuture;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Campaign$1;->this$0:Lcom/pinguo/camera360/order/model/Campaign;

    invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V

    return-void
.end method


# virtual methods
.method public adapte(Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;)Lcom/pinguo/camera360/order/model/Campaign$Info;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;->status:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/order/model/Campaign$Info;

    return-object v0

    :cond_b
    new-instance v0, Lcom/pinguo/lib/os/Fault;

    iget v1, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;->status:I

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Campaign$1;->adapte(Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;)Lcom/pinguo/camera360/order/model/Campaign$Info;

    move-result-object v0

    return-object v0
.end method
