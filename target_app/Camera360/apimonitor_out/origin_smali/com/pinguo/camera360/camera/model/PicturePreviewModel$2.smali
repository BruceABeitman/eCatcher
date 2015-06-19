.class Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;
.super Ljava/lang/Object;
.source "PicturePreviewModel.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makePreviewNew([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/model/PicturePreviewModel;

.field private final synthetic val$preCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;Lcom/pinguo/camera360/photoedit/callback/PreCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;->this$0:Lcom/pinguo/camera360/camera/model/PicturePreviewModel;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;->val$preCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;->this$0:Lcom/pinguo/camera360/camera/model/PicturePreviewModel;

    #getter for: Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makedCount:I
    invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->access$0(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makedCount:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->access$1(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;->val$preCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/pinguo/camera360/photoedit/callback/PreCallback;->previewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "makePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Preview maked count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;->this$0:Lcom/pinguo/camera360/camera/model/PicturePreviewModel;

    #getter for: Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makedCount:I
    invoke-static {v2}, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->access$0(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
