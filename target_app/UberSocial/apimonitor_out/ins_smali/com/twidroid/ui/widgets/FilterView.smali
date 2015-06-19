.class public Lcom/twidroid/ui/widgets/FilterView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 7
const/high16 v3, -0x8000
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/FilterView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0a0039
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/FilterView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0a0037
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V
return-void
.end method