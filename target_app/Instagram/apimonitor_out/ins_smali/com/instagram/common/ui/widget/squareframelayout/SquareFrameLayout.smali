.class public Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SquareFrameLayout.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 8
const/high16 v4, 0x4000
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
const/high16 v3, -0x8000
if-eq v2, v3, :cond_17
if-ne v2, v4, :cond_1a
:cond_17
if-ge v1, v0, :cond_1a
move v0, v1
:cond_1a
invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V
return-void
.end method