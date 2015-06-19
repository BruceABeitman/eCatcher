.class Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;
.super Ljava/lang/Object;
.source "CloudCircleProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->access$0(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mCloudIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->access$1(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mCloudIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->access$1(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->access$2(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    return-void
.end method
