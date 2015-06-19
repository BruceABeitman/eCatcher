.class Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;
.super Ljava/lang/Object;
.source "PicturePreviewFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;-><init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onThumbNailSaved(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;-><init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
