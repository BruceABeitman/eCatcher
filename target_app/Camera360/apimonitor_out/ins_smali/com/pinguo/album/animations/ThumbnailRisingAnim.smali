.class public Lcom/pinguo/album/animations/ThumbnailRisingAnim;
.super Lcom/pinguo/album/animations/ThumbnailAnim;
.source "ThumbnailRisingAnim.java"
.field private static final RISING_DISTANCE:I = 0x80
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/animations/ThumbnailAnim;-><init>()V
return-void
.end method
.method public apply(Lcom/pinguo/album/opengles/GLESCanvas;ILandroid/graphics/Rect;)V
.registers 8
const/4 v3, 0x0
const/high16 v0, 0x4300
const/high16 v1, 0x3f80
iget v2, p0, Lcom/pinguo/album/animations/ThumbnailRisingAnim;->mProgress:F
sub-float/2addr v1, v2
mul-float/2addr v0, v1
invoke-interface {p1, v3, v3, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FFF)V
return-void
.end method