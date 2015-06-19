.class public Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ShortestDimensionConstrainedFrameLayout.java"
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
.registers 6
const/high16 v2, 0x4000
invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
invoke-virtual {p0}, Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;->getMeasuredWidth()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;->getMeasuredHeight()I
move-result v0
if-le v1, v0, :cond_27
move v1, v0
:goto_10
invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;->setMeasuredDimension(II)V
invoke-virtual {p0}, Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;->getMeasuredWidth()I
move-result v0
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;->getMeasuredHeight()I
move-result v1
invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/base/ShortestDimensionConstrainedFrameLayout;->measureChildren(II)V
return-void
:cond_27
move v0, v1
goto :goto_10
.end method