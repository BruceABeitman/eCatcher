.class public final Lcom/google/android/gms/internal/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ar;

.field private final b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/ads/a;

.field private d:Lcom/google/android/gms/internal/h;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/ads/doubleclick/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ar;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/t;->a:Lcom/google/android/gms/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/internal/t;->b:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/t;->c(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/t;->b:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ab;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ab;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/t;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/t;->a:Lcom/google/android/gms/internal/ar;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tp;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/internal/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/e;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/t;->f:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/t;->f:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/d;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/n;)V

    :cond_38
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

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
    iput-object p1, p0, Lcom/google/android/gms/internal/t;->f:Lcom/google/android/gms/ads/doubleclick/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    if-nez v0, :cond_9

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/t;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    new-instance v1, Lcom/google/android/gms/internal/z;

    iget-object v2, p0, Lcom/google/android/gms/internal/t;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/q;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/z;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->a:Lcom/google/android/gms/internal/ar;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/q;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Ljava/util/Map;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/t;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/ads/doubleclick/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->f:Lcom/google/android/gms/ads/doubleclick/a;

    return-object v0
.end method

.method public d()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    invoke-interface {v1}, Lcom/google/android/gms/internal/h;->c()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    :catch_d
    move-exception v1

    const-string v2, "Failed to check if ad is ready."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public e()V
    .registers 3

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/t;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->d:Lcom/google/android/gms/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/internal/h;->f()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
