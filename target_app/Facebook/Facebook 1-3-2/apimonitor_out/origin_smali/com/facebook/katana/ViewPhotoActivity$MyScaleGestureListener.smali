.class Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;
.super Ljava/lang/Object;
.source "ViewPhotoActivity.java"

# interfaces
.implements Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/ViewPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/facebook/katana/util/ScaleGestureDetector;)Z
    .registers 8

    invoke-virtual {p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
    invoke-static {v4}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F

    move-result v4

    mul-float v2, v3, v4

    invoke-virtual {p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->getFocusY()F

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scaling to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/facebook/katana/ViewPhotoActivity;->access$21(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Center is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/facebook/katana/ViewPhotoActivity;->access$21(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
    invoke-static {v4}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v1}, Lcom/facebook/katana/ImageViewTouchBase;->zoomTo(FFF)V

    const/4 v4, 0x1

    return v4
.end method

.method public onScaleBegin(Lcom/facebook/katana/util/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/facebook/katana/util/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
