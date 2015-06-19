.class public final Lcom/google/android/gms/internal/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ar;

.field private b:Lcom/google/android/gms/ads/a;

.field private c:Lcom/google/android/gms/internal/h;

.field private d:[Lcom/google/android/gms/ads/d;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/google/android/gms/ads/doubleclick/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ar;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ar;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_10
    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ae;->a(Z)[Lcom/google/android/gms/ads/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_21} :catch_37

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/dx;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ab;

    sget-object v3, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/ads/d;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/dx;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method private j()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->a()Lcom/google/android/gms/c/d;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_8

    :catch_15
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/ar;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tp;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/internal/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/e;)V

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/d;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/n;)V

    :cond_4b
    invoke-direct {p0}, Lcom/google/android/gms/internal/s;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->b()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/to;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/e;)V
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

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/ads/doubleclick/a;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/ads/doubleclick/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/d;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/n;)V
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

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/internal/q;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/s;->k()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/z;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/q;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/z;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/ar;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/q;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Ljava/util/Map;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/s;->e:Ljava/lang/String;

    return-void
.end method

.method public varargs a([Lcom/google/android/gms/ads/d;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/s;->b([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public varargs b([Lcom/google/android/gms/ads/d;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/ab;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1e

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_1e
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public c()Lcom/google/android/gms/ads/d;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->i()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ab;->a()Lcom/google/android/gms/ads/d;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public d()[Lcom/google/android/gms/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->d:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/doubleclick/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/ads/doubleclick/a;

    return-object v0
.end method

.method public g()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->d()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public h()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->h()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public i()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->e()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
