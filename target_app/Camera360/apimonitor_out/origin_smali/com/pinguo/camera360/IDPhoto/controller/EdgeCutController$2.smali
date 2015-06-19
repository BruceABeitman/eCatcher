.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;
.super Ljava/lang/Object;
.source "EdgeCutController.java"

# interfaces
.implements Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$OnBitmapComposedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    return-object v0
.end method


# virtual methods
.method public onBitmapComposed(Landroid/graphics/Bitmap;)V
    .registers 5

    const-string/jumbo v1, "EdgeCutController"

    const-string/jumbo v2, "onBitmapComposed:mCutoutDoneCallback"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getMadePicPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, p1, v2}, Lcom/pinguo/lib/util/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_21

    :goto_12
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public onBitmapComposedFail()V
    .registers 3

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "onBitmapComposedFail:mCutoutDoneCallback"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialogInCenter()V

    return-void
.end method
