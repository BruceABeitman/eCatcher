.class public Lcom/instagram/feed/widget/ConstrainedProgressImageView;
.super Lcom/instagram/feed/widget/a;
.source "ConstrainedProgressImageView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/feed/widget/a;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/feed/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected onMeasure(II)V
.registers 7
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildCount()I
move-result v1
if-lez v1, :cond_31
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
const/16 v3, 0xa
invoke-static {v2, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v2
float-to-int v2, v2
invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V
const/4 v1, 0x2
invoke-virtual {p0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V
:cond_31
invoke-virtual {p0, v0, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->setMeasuredDimension(II)V
return-void
.end method