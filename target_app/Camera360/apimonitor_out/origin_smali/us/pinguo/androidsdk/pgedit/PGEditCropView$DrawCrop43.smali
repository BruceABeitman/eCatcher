.class public Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;
.super Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
.source "PGEditCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditCropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawCrop43"
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
    .registers 8

    const/4 v5, 0x0

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V

    new-instance v0, Landroid/graphics/Rect;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$34(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$34(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$34(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$34(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->centerRect:Landroid/graphics/Rect;

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$27(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$28(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$29(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->changeRoundValue()V

    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->invalidate()V

    return-void
.end method


# virtual methods
.method public scaleLeftBottom(Landroid/view/MotionEvent;)V
    .registers 3

    const/high16 v0, 0x3f40

    invoke-virtual {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->scaleLeftBottom(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public scaleLeftTop(Landroid/view/MotionEvent;)V
    .registers 3

    const/high16 v0, 0x3f40

    invoke-virtual {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->scaleLeftTop(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public scaleRightBottom(Landroid/view/MotionEvent;)V
    .registers 3

    const/high16 v0, 0x3f40

    invoke-virtual {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->scaleRightBottom(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public scaleRightTop(Landroid/view/MotionEvent;)V
    .registers 3

    const/high16 v0, 0x3f40

    invoke-virtual {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;->scaleRightTop(Landroid/view/MotionEvent;F)V

    return-void
.end method
