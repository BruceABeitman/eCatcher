.class Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/ViewPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ImageViewTouchBase;->zoomTo(F)V

    :cond_30
    :goto_30
    const/4 v1, 0x1

    return v1

    :cond_32
    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;

    move-result-object v1

    const/high16 v2, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/katana/ImageViewTouchBase;->zoomToPoint(FFF)V

    goto :goto_30
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ImageViewTouchBase;->postTranslateCenter(FF)V

    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #calls: Lcom/facebook/katana/ViewPhotoActivity;->exitEditMode()V
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$11(Lcom/facebook/katana/ViewPhotoActivity;)V

    const/4 v0, 0x1

    return v0
.end method
