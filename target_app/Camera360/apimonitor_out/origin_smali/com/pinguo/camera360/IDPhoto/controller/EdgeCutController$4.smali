.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;
.super Ljava/lang/Object;
.source "EdgeCutController.java"

# interfaces
.implements Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;-><init>(Landroid/app/Activity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapInvalidate(Landroid/graphics/Bitmap;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    #calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCompose(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$23(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->updatePrevNextBtn()V
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$24(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    :cond_13
    return-void
.end method

.method public onPathInvalidate(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$4;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->updateDrawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
