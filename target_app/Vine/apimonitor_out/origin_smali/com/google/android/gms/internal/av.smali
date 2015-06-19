.class public final Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;


# instance fields
.field private lO:Lcom/google/android/gms/ads/AdListener;

.field private mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private mg:[Lcom/google/android/gms/ads/AdSize;

.field private mh:Ljava/lang/String;

.field private final mu:Lcom/google/android/gms/internal/bt;

.field private final mv:Lcom/google/android/gms/internal/al;

.field private mw:Lcom/google/android/gms/internal/ar;

.field private mx:Ljava/lang/String;

.field private my:Landroid/view/ViewGroup;

.field private mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/al;->aA()Lcom/google/android/gms/internal/al;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/al;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/al;->aA()Lcom/google/android/gms/internal/al;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/al;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/al;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mu:Lcom/google/android/gms/internal/bt;

    iput-object p1, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/av;->mv:Lcom/google/android/gms/internal/al;

    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_14
    new-instance v0, Lcom/google/android/gms/internal/ap;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ap;->f(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ap;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_25} :catch_3b

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/am;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/eu;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private aG()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->P()Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_8

    :catch_15
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private aH()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/av;->mu:Lcom/google/android/gms/internal/bt;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/ah;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/di;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/dm;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V

    :cond_6d
    invoke-direct {p0}, Lcom/google/android/gms/internal/av;->aG()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/au;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/av;->aH()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mv:Lcom/google/android/gms/internal/al;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/al;->a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aj;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mu:Lcom/google/android/gms/internal/bt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/au;->aD()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bt;->c(Ljava/util/Map;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public varargs a([Lcom/google/android/gms/ads/AdSize;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/am;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1e

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_1e
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->destroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->aB()Lcom/google/android/gms/ads/AdSize;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public pause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public recordManualImpression()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->ab()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public resume()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->resume()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/av;->a([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/ao;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_1f

    new-instance v0, Lcom/google/android/gms/internal/di;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_1b
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b

    :catch_21
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/dm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_1d
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_23

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_1d

    :catch_23
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method
