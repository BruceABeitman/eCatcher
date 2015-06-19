.class public Lcom/pinguo/album/animations/ThumbnailScatteringAnim;
.super Lcom/pinguo/album/animations/ThumbnailAnim;
.source "ThumbnailScatteringAnim.java"


# instance fields
.field private PHOTO_DISTANCE:I

.field private mCenter:Lcom/pinguo/album/utils/RelativePosition;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/utils/RelativePosition;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/album/animations/ThumbnailAnim;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->PHOTO_DISTANCE:I

    iput-object p1, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mCenter:Lcom/pinguo/album/utils/RelativePosition;

    return-void
.end method


# virtual methods
.method public apply(Lcom/pinguo/album/opengles/GLESCanvas;ILandroid/graphics/Rect;)V
    .registers 9

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mCenter:Lcom/pinguo/album/utils/RelativePosition;

    invoke-virtual {v0}, Lcom/pinguo/album/utils/RelativePosition;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mProgress:F

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mCenter:Lcom/pinguo/album/utils/RelativePosition;

    invoke-virtual {v1}, Lcom/pinguo/album/utils/RelativePosition;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->PHOTO_DISTANCE:I

    mul-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FFF)V

    iget v0, p0, Lcom/pinguo/album/animations/ThumbnailScatteringAnim;->mProgress:F

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->setAlpha(F)V

    return-void
.end method
