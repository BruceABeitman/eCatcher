.class Lcom/pinguo/camera360/adv/AdvertisementModel$2;
.super Ljava/lang/Thread;
.source "AdvertisementModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/adv/AdvertisementModel;->update(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/adv/AdvertisementModel;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/adv/AdvertisementModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/adv/AdvertisementModel$2;->this$0:Lcom/pinguo/camera360/adv/AdvertisementModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel$2;->this$0:Lcom/pinguo/camera360/adv/AdvertisementModel;

    #getter for: Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
    invoke-static {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel;->access$0(Lcom/pinguo/camera360/adv/AdvertisementModel;)Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->schedule()Ljava/lang/String;

    return-void
.end method
