.class public final Lcom/google/android/gms/ads/AdView;
.super Landroid/view/ViewGroup;
.field private final a:Lcom/google/android/gms/internal/ae;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/internal/ae;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;)V
iput-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/google/android/gms/internal/ae;
const/4 v1, 0x0
invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
iput-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/google/android/gms/internal/ae;
const/4 v1, 0x0
invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
iput-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->a()V
return-void
.end method
.method public final a(Lcom/google/android/gms/ads/a;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/ads/a;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/ads/b;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {p1}, Lcom/google/android/gms/ads/b;->a()Lcom/google/android/gms/internal/ac;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ac;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/ads/d;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
const/4 v1, 0x1
new-array v1, v1, [Lcom/google/android/gms/ads/d;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->a([Lcom/google/android/gms/ads/d;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->c()V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->d()V
return-void
.end method
.method protected final onLayout(ZIIII)V
.registers 11
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdView;->getChildAt(I)Landroid/view/View;
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
invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdView;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v1, p0, Lcom/google/android/gms/ads/AdView;->a:Lcom/google/android/gms/internal/ae;
invoke-virtual {v1}, Lcom/google/android/gms/internal/ae;->b()Lcom/google/android/gms/ads/d;
move-result-object v3
if-eqz v2, :cond_3c
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v4, 0x8
if-eq v1, v4, :cond_3c
invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/AdView;->measureChild(Landroid/view/View;II)V
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
:goto_20
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdView;->getSuggestedMinimumWidth()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdView;->getSuggestedMinimumHeight()I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I
move-result v1
invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/AdView;->setMeasuredDimension(II)V
return-void
:cond_3c
if-eqz v3, :cond_4b
invoke-virtual {p0}, Lcom/google/android/gms/ads/AdView;->getContext()Landroid/content/Context;
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