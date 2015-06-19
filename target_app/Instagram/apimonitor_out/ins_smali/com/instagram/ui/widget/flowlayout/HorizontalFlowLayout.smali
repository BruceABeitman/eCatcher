.class public Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;
.super Landroid/view/ViewGroup;
.source "HorizontalFlowLayout.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method private a(IZ)[I
.registers 17
const/high16 v4, -0x8000
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingLeft()I
move-result v3
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingTop()I
move-result v2
const/4 v1, 0x0
add-int v6, v3, p1
const/4 v0, 0x0
move v5, v4
move v4, v3
move v3, v2
move v2, v1
move v1, v0
:goto_13
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getChildCount()I
move-result v0
if-ge v1, v0, :cond_6c
invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v9
add-int/2addr v8, v9
iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v8, v9
iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v10
add-int/2addr v9, v10
iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
add-int/2addr v9, v10
const/4 v10, -0x1
if-eq p1, v10, :cond_44
add-int v10, v4, v8
if-le v10, v6, :cond_44
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingLeft()I
move-result v4
add-int/2addr v3, v2
const/4 v2, 0x0
:cond_44
if-eqz p2, :cond_5f
iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
add-int/2addr v10, v4
iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
add-int/2addr v11, v3
iget v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
add-int/2addr v12, v4
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v13
add-int/2addr v12, v13
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
add-int/2addr v0, v3
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v13
add-int/2addr v0, v13
invoke-virtual {v7, v10, v11, v12, v0}, Landroid/view/View;->layout(IIII)V
:cond_5f
invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I
move-result v2
add-int/2addr v4, v8
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v5
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
:cond_6c
const/4 v0, 0x2
new-array v0, v0, [I
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingLeft()I
move-result v4
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingRight()I
move-result v5
add-int/2addr v4, v5
aput v4, v0, v1
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingTop()I
move-result v4
add-int/2addr v2, v3
invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingBottom()I
move-result v3
add-int/2addr v2, v3
aput v2, v0, v1
return-object v0
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
return v0
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 3
const/4 v1, -0x2
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method protected onLayout(ZIIII)V
.registers 8
sub-int v0, p4, p2
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->a(IZ)[I
return-void
.end method
.method protected onMeasure(II)V
.registers 11
const/4 v3, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingLeft()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getPaddingRight()I
move-result v1
sub-int v7, v0, v1
move v6, v3
:goto_11
invoke-virtual {p0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getChildCount()I
move-result v0
if-ge v6, v0, :cond_2e
invoke-virtual {p0, v6}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v2, 0x8
if-eq v0, v2, :cond_2a
move-object v0, p0
move v2, p1
move v4, p2
move v5, v3
invoke-virtual/range {v0 .. v5}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V
:cond_2a
add-int/lit8 v0, v6, 0x1
move v6, v0
goto :goto_11
:cond_2e
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-nez v0, :cond_4a
const/4 v0, -0x1
:goto_35
invoke-direct {p0, v0, v3}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->a(IZ)[I
move-result-object v0
aget v1, v0, v3
invoke-static {v1, p1}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->resolveSize(II)I
move-result v1
const/4 v2, 0x1
aget v0, v0, v2
invoke-static {v0, p2}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->resolveSize(II)I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/flowlayout/HorizontalFlowLayout;->setMeasuredDimension(II)V
return-void
:cond_4a
move v0, v7
goto :goto_35
.end method