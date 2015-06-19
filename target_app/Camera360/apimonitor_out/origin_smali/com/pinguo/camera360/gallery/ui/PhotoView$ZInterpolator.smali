.class Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;->focalLength:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    const/high16 v3, 0x3f80

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
