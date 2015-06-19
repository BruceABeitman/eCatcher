.class public Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;
.super Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
.source "PGEditCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditCropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawCropFree"
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
    .registers 7

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V

    new-instance v0, Landroid/graphics/Rect;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$27(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$28(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
    invoke-static {p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$29(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->changeRoundValue()V

    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->invalidate()V

    return-void
.end method


# virtual methods
.method public moveSideBottom(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_34

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-le v1, v2, :cond_2c

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_28
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_28

    :cond_34
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-ge v1, v2, :cond_56

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_28

    :cond_56
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_28
.end method

.method public moveSideLeft(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_34

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-ge v1, v2, :cond_2c

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :goto_28
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_28

    :cond_34
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-ge v1, v2, :cond_56

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_28

    :cond_56
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_28
.end method

.method public moveSideRight(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_34

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-le v1, v2, :cond_2c

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :goto_28
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_28

    :cond_34
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-ge v1, v2, :cond_56

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_28

    :cond_56
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_28
.end method

.method public moveSideTop(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_34

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-ge v1, v2, :cond_2c

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :goto_28
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_28

    :cond_34
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v2

    if-ge v1, v2, :cond_56

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_28

    :cond_56
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_28
.end method

.method public scaleLeftBottom(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gez v0, :cond_5c

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_54

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :goto_37
    if-lez v1, :cond_8e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-le v2, v3, :cond_86

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :goto_50
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_54
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_37

    :cond_5c
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_7e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_37

    :cond_7e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_37

    :cond_86
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_50

    :cond_8e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_b0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_50

    :cond_b0
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_50
.end method

.method public scaleLeftTop(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gez v0, :cond_5c

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_54

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :goto_37
    if-gez v1, :cond_8e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_86

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    :goto_50
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_54
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_37

    :cond_5c
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_7e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_37

    :cond_7e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_37

    :cond_86
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_50

    :cond_8e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_b0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_50

    :cond_b0
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_50
.end method

.method public scaleRightBottom(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_5c

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-le v2, v3, :cond_54

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :goto_37
    if-lez v1, :cond_8e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-le v2, v3, :cond_86

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :goto_50
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_54
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_5c
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_7e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_7e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_86
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_50

    :cond_8e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_b0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_50

    :cond_b0
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_50
.end method

.method public scaleRightTop(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_5c

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-le v2, v3, :cond_54

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :goto_37
    if-gez v1, :cond_8e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_86

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    :goto_50
    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->end(Landroid/view/MotionEvent;)V

    return-void

    :cond_54
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_5c
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_7e

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_7e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_86
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_50

    :cond_8e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v3

    if-ge v2, v3, :cond_b0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_50

    :cond_b0
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;->centerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_50
.end method
