.class Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;
.super Ljava/lang/Object;
.source "PhotoAdjustDialog.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorAdjustState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;-><init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)V

    return-void
.end method


# virtual methods
.method public adjust()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$15(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_b
    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
    invoke-static {v1, v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$16(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/lib/image/BitmapUtils;->getMirrorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$3(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Landroid/graphics/Bitmap;)V

    :goto_25
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$5(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_35
    const/4 v0, 0x1

    goto :goto_b

    :cond_37
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$4(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/lib/image/BitmapUtils;->getMirrorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$3(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Landroid/graphics/Bitmap;)V

    goto :goto_25
.end method

.method public changeStep()V
    .registers 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$9(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$8(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$6(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$7(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMidBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$12(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08024e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mDirectionState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$17(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;

    move-result-object v1

    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$14(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
    invoke-static {v0, v2}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$16(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
    invoke-static {v0, v2}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$3(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Landroid/graphics/Bitmap;)V

    :cond_5f
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$5(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$4(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
