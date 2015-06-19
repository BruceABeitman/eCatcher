.class public final Lcom/google/android/gms/ads/search/SearchAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private final kD:Lcom/google/android/gms/internal/ak;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/internal/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->destroy()V

    return-void
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->N()Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ak;->a(Lcom/google/android/gms/internal/aj;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3a

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/search/SearchAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->setMeasuredDimension(II)V

    return-void

    :cond_3a
    if-eqz v3, :cond_49

    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_1e

    :cond_49
    move v1, v0

    goto :goto_1e
.end method

.method public final pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->pause()V

    return-void
.end method

.method public final resume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->resume()V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ak;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ak;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ak;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method
