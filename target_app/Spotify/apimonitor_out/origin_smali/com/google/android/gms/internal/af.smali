.class public final Lcom/google/android/gms/internal/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/be;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/l;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/internal/t;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/ads/doubleclick/a;

.field private h:Lcom/google/android/gms/ads/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/l;->a()Lcom/google/android/gms/internal/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/af;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/l;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/be;

    invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/be;

    iput-object p1, p0, Lcom/google/android/gms/internal/af;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/af;->c:Lcom/google/android/gms/internal/l;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/af;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/t;->f()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/af;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/h;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/q;)V
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

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public final a(Lcom/google/android/gms/internal/ac;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    if-nez v0, :cond_4e

    const-string v0, "loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->f:Ljava/lang/String;

    if-nez v1, :cond_d

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/af;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->b:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ak;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/be;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    new-instance v1, Lcom/google/android/gms/internal/h;

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/h;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/q;)V

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->g:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    new-instance v1, Lcom/google/android/gms/internal/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->g:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/z;)V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->h:Lcom/google/android/gms/ads/c/a;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    new-instance v1, Lcom/google/android/gms/internal/cw;

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->h:Lcom/google/android/gms/ads/c/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/ads/c/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/ct;)V

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->e:Lcom/google/android/gms/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->c:Lcom/google/android/gms/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/l;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/ah;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/ah;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/be;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->a:Lcom/google/android/gms/internal/be;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->b(Ljava/util/Map;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_70} :catch_71

    :cond_70
    :goto_70
    return-void

    :catch_71
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/af;->f:Ljava/lang/String;

    return-void
.end method
