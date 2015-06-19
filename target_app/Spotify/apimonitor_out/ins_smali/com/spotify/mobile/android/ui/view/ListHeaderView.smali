.class public Lcom/spotify/mobile/android/ui/view/ListHeaderView;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private final a:Landroid/widget/ImageView;
.field private final b:Lcom/spotify/android/paste/widget/HeaderView;
.field private c:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/widget/ImageView;
invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
const/high16 v1, -0x3000
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V
new-instance v0, Lcom/spotify/android/paste/widget/HeaderView;
invoke-direct {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->addView(Landroid/view/View;)V
return-void
.end method
.method public final a()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
return-object v0
.end method
.method public final a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
if-eqz p1, :cond_10
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->addView(Landroid/view/View;)V
:cond_10
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->requestLayout()V
return-void
.end method
.method public final b()Lcom/spotify/android/paste/widget/HeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
return-object v0
.end method
.method protected onLayout(ZIIII)V
.registers 11
const/4 v3, 0x0
sub-int v0, p4, p2
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v2
invoke-virtual {v1, v3, v3, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/HeaderView;->getMeasuredHeight()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v2, v3, v3, v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->layout(IIII)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
if-eqz v2, :cond_39
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
sub-int/2addr v0, v2
div-int/lit8 v0, v0, 0x2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int/2addr v3, v0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
add-int/2addr v4, v1
invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V
:cond_39
return-void
.end method
.method protected onMeasure(II)V
.registers 11
const/high16 v7, 0x4000
const/4 v0, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
if-nez v1, :cond_11
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "ListHeaderView doesn\'t support unspecified width."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {v1, v3, v4}, Lcom/spotify/android/paste/widget/HeaderView;->measure(II)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/HeaderView;->getMeasuredHeight()I
move-result v3
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
if-eqz v1, :cond_61
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
const/high16 v4, -0x8000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {v1, v4, v0}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
const/high16 v0, 0x4180
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v0
:goto_4b
iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a:Landroid/widget/ImageView;
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
add-int v6, v3, v1
add-int/2addr v6, v0
invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->measure(II)V
add-int/2addr v1, v3
add-int/2addr v0, v1
invoke-virtual {p0, v2, v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->setMeasuredDimension(II)V
return-void
:cond_61
move v1, v0
goto :goto_4b
.end method