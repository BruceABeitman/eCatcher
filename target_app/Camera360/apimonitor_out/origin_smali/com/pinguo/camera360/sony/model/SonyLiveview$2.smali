.class Lcom/pinguo/camera360/sony/model/SonyLiveview$2;
.super Ljava/lang/Thread;
.source "SonyLiveview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyLiveview;->startLiveview()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyLiveview;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Starting drawing liveview frame."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mInMutableAvailable:Z
    invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$8(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #calls: Lcom/pinguo/camera360/sony/model/SonyLiveview;->initInBitmap(Landroid/graphics/BitmapFactory$Options;)V
    invoke-static {v4, v1}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$9(Lcom/pinguo/camera360/sony/model/SonyLiveview;Landroid/graphics/BitmapFactory$Options;)V

    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
    invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$6(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z

    move-result v4

    if-nez v4, :cond_34

    :goto_29
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2e
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #setter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z
    invoke-static {v4, v6}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V

    return-void

    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_45} :catch_59
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_45} :catch_68

    move-result-object v2

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mInMutableAvailable:Z
    invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$8(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #calls: Lcom/pinguo/camera360/sony/model/SonyLiveview;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v1, v2}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$11(Lcom/pinguo/camera360/sony/model/SonyLiveview;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    :cond_53
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->fireLiveviewCallback(Landroid/graphics/Bitmap;)V

    goto :goto_21

    :catch_59
    move-exception v0

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyLiveview;->mInMutableAvailable:Z
    invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$8(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    #calls: Lcom/pinguo/camera360/sony/model/SonyLiveview;->clearInBitmap(Landroid/graphics/BitmapFactory$Options;)V
    invoke-static {v4, v1}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$10(Lcom/pinguo/camera360/sony/model/SonyLiveview;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_21

    :catch_68
    move-exception v0

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Drawer thread is Interrupted."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
