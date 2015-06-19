.class public Lcom/bbm/ui/SquaredImageView;
.super Landroid/widget/ImageView;
.source "SquaredImageView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/SquaredImageView;->getSuggestedMinimumWidth()I
move-result v0
invoke-static {v0, p1}, Lcom/bbm/ui/SquaredImageView;->getDefaultSize(II)I
move-result v0
invoke-virtual {p0, v0, v0}, Lcom/bbm/ui/SquaredImageView;->setMeasuredDimension(II)V
return-void
.end method