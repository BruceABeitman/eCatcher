.class public final Lcom/instagram/creation/video/ui/o;
.super Landroid/view/SurfaceView;
.source "SquareSurfaceView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method protected final onMeasure(II)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/o;->getMeasuredWidth()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/o;->getMeasuredWidth()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/ui/o;->setMeasuredDimension(II)V
return-void
.end method