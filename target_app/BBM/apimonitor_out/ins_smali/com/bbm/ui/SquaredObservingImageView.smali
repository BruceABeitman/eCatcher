.class public Lcom/bbm/ui/SquaredObservingImageView;
.super Lcom/bbm/ui/ObservingImageView;
.source "SquaredObservingImageView.java"
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected onMeasure(II)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/SquaredObservingImageView;->getSuggestedMinimumWidth()I
move-result v0
invoke-static {v0, p1}, Lcom/bbm/ui/SquaredObservingImageView;->getDefaultSize(II)I
move-result v0
invoke-virtual {p0, v0, v0}, Lcom/bbm/ui/SquaredObservingImageView;->setMeasuredDimension(II)V
return-void
.end method
.method protected onSizeChanged(IIII)V
.registers 5
invoke-super {p0, p1, p1, p3, p4}, Lcom/bbm/ui/ObservingImageView;->onSizeChanged(IIII)V
return-void
.end method