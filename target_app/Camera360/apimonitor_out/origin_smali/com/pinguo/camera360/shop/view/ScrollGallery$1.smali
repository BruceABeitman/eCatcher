.class Lcom/pinguo/camera360/shop/view/ScrollGallery$1;
.super Landroid/os/Handler;
.source "ScrollGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/shop/view/ScrollGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/view/ScrollGallery;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$1;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/16 v2, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$1;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->scrollRight()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery$1;->this$0:Lcom/pinguo/camera360/shop/view/ScrollGallery;

    #getter for: Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->access$0(Lcom/pinguo/camera360/shop/view/ScrollGallery;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_15
    return-void
.end method
