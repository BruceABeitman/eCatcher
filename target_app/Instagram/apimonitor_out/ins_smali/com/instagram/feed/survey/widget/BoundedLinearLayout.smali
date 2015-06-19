.class public Lcom/instagram/feed/survey/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BoundedLinearLayout.java"
.field private final a:I
.field private final b:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget-object v0, Lcom/facebook/bb;->BoundedView:[I
invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Lcom/facebook/bb;->BoundedView_maxWidth:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I
sget v1, Lcom/facebook/bb;->BoundedView_maxHeight:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I
if-lez v1, :cond_16
iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I
if-ge v1, v0, :cond_16
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I
invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p1
:cond_16
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I
if-lez v1, :cond_2c
iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I
if-ge v1, v0, :cond_2c
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I
invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
:cond_2c
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
return-void
.end method