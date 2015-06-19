.class Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;
.super Landroid/os/Handler;
.source "SkinController.java"


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

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_51

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->hideProcessDialogInCenter()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isNeedShowClothesView:Z
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$2(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #setter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->isNeedShowClothesView:Z
    invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$3(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mClothesView:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$4(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$5(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mShowAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$6(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGGLSurfaceView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$5(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setVisibility(I)V

    :cond_50
    :goto_50
    return-void

    :cond_51
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_75

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$5(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$5(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_50

    :cond_75
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_93

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-result-object v1

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->initSkin()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$8(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V

    goto :goto_50

    :cond_93
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_ac

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->hideProcessDialogInCenter()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #calls: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->backMain()V
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$9(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->showCenterView(Landroid/graphics/Bitmap;)V

    goto :goto_50

    :cond_ac
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_50

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->hideProcessDialogInCenter()V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800db

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_50
.end method
