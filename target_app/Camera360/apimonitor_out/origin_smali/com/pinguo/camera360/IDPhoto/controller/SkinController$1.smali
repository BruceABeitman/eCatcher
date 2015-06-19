.class Lcom/pinguo/camera360/IDPhoto/controller/SkinController$1;
.super Ljava/lang/Object;
.source "SkinController.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .registers 1

    return-void
.end method

.method public success(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iget-boolean v0, v0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mIsMain:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    return-void
.end method
