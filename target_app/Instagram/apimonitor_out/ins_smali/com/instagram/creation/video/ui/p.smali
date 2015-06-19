.class public Lcom/instagram/creation/video/ui/p;
.super Landroid/view/TextureView;
.source "SquareTextureView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
if-ge v0, v1, :cond_e
:goto_a
invoke-virtual {p0, v0, v0}, Lcom/instagram/creation/video/ui/p;->setMeasuredDimension(II)V
return-void
:cond_e
move v0, v1
goto :goto_a
.end method