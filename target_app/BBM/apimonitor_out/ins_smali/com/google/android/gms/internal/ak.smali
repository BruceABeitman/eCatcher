.class public final Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;
.field private final lF:Lcom/google/android/gms/internal/be;
.field private lG:Lcom/google/android/gms/internal/ag;
.field private lH:Landroid/view/ViewGroup;
.field private lc:Lcom/google/android/gms/ads/AdListener;
.field private lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.field private lr:[Lcom/google/android/gms/ads/AdSize;
.field private ls:Ljava/lang/String;
.method public constructor <init>(Landroid/view/ViewGroup;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/be;
invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;
iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/be;
invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;
iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
:try_start_10
new-instance v0, Lcom/google/android/gms/internal/ae;
invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ae;->c(Z)[Lcom/google/android/gms/ads/AdSize;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->getAdUnitId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
:try_end_21
.catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_21} :catch_37
invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_36
new-instance v0, Lcom/google/android/gms/internal/ab;
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
const-string v1, "Ads by Google"
invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;)V
:cond_36
:goto_36
return-void
:catch_37
move-exception v0
new-instance v2, Lcom/google/android/gms/internal/ab;
sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;
invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/cz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_36
.end method
.method private am()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->P()Lcom/google/android/gms/dynamic/b;
move-result-object v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:try_end_14
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15
goto :goto_8
:catch_15
move-exception v0
const-string v1, "Failed to get an ad frame."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method private an()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
if-nez v0, :cond_14
:cond_8
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-nez v0, :cond_14
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad size and ad unit ID must be set before loadAd is called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/ab;
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/y;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/ag;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/ads/AdListener;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/x;
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/ads/AdListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/af;)V
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/ad;
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ai;)V
:cond_4b
invoke-direct {p0}, Lcom/google/android/gms/internal/ak;->am()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/aj;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/google/android/gms/internal/ak;->an()V
:cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/z;
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aj;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/z;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;
invoke-virtual {p1}, Lcom/google/android/gms/internal/aj;->ak()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->c(Ljava/util/Map;)V
:goto_23
:cond_23
:try_end_23
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24
return-void
:catch_24
move-exception v0
const-string v1, "Failed to load ad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_23
.end method
.method public final varargs a([Lcom/google/android/gms/ads/AdSize;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/ab;
iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ab;)V
:goto_18
:try_end_18
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1e
:cond_18
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
return-void
:catch_1e
move-exception v0
const-string v1, "Failed to set the ad size."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_18
.end method
.method public final destroy()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->destroy()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Failed to destroy AdView."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/ads/AdListener;
return-object v0
.end method
.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->Q()Lcom/google/android/gms/internal/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ab;->ai()Lcom/google/android/gms/ads/AdSize;
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f
move-result-object v0
:goto_e
return-object v0
:catch_f
move-exception v0
const-string v1, "Failed to get the current AdSize."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_15
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
const/4 v1, 0x0
aget-object v0, v0, v1
goto :goto_e
:cond_1f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final getAdSizes()[Lcom/google/android/gms/ads/AdSize;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
return-object v0
.end method
.method public final getAdUnitId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
return-object v0
.end method
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
return-object v0
.end method
.method public final pause()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->pause()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Failed to call pause."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public final recordManualImpression()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->Z()V
:goto_5
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "Failed to record impression."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public final resume()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->resume()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Failed to call resume."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/ads/AdListener;
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/x;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/ads/AdListener;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/af;)V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
:catch_15
move-exception v0
const-string v1, "Failed to set the AdListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public final varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/ads/AdSize;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad size can only be set once on AdView."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ak;->a([Lcom/google/android/gms/ads/AdSize;)V
return-void
.end method
.method public final setAdUnitId(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad unit ID can only be set once on AdView."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
return-void
.end method
.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/ad;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ai;)V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
:catch_15
move-exception v0
const-string v1, "Failed to set the AppEventListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method