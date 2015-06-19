.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private final kv:Lcom/google/android/gms/internal/av;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/av;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/av;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/internal/av;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->destroy()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdSizes()[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->O()Lcom/google/android/gms/internal/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/au;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
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

.method protected onMeasure(II)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3a

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1e
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

    :cond_3a
    if-eqz v3, :cond_49

    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getContext()Landroid/content/Context;

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

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->pause()V

    return-void
.end method

.method public recordManualImpression()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->recordManualImpression()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->resume()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 4

    if-eqz p1, :cond_6

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->a([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->kv:Lcom/google/android/gms/internal/av;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method
