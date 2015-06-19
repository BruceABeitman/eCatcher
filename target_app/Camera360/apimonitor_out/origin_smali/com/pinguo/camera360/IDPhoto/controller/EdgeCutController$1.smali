.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
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

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    return-object v0
.end method


# virtual methods
.method public onBitmapComposed(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$1;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBitmapComposedFail()V
    .registers 3

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "5_composed_fail:mUpdateCenterImageCallback"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
