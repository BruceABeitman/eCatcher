.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
.super Landroid/view/ViewGroup;
.field private final a:Lcom/google/android/gms/internal/ae;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/google/android/gms/internal/ae;
const/4 v1, 0x1
invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->a:Lcom/google/android/gms/internal/ae;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/google/android/gms/internal/ae;
const/4 v1, 0x1
invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->a:Lcom/google/android/gms/internal/ae;
return-void
.end method
.method protected final onLayout(ZIIII)V
.registers 11
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_26
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-eq v1, v2, :cond_26
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
sub-int v3, p4, p2
sub-int/2addr v3, v1
div-int/lit8 v3, v3, 0x2
sub-int v4, p5, p3
sub-int/2addr v4, v2
div-int/lit8 v4, v4, 0x2
add-int/2addr v1, v3
add-int/2addr v2, v4
invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V
:cond_26
return-void
.end method
.method protected final onMeasure(II)V
.registers 8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v1, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v1}, Lcom/google/android/gms/internal/ae;->b()Lcom/google/android/gms/ads/d;
move-result-object v3
if-eqz v2, :cond_3c
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v4, 0x8
if-eq v1, v4, :cond_3c
invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->measureChild(Landroid/view/View;II)V
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
:goto_20
invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getSuggestedMinimumWidth()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getSuggestedMinimumHeight()I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I
move-result v1
invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setMeasuredDimension(II)V
return-void
:cond_3c
if-eqz v3, :cond_4b
invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/d;->b(Landroid/content/Context;)I
move-result v1
invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/d;->a(Landroid/content/Context;)I
move-result v0
goto :goto_20
:cond_4b
move v1, v0
goto :goto_20
.end method