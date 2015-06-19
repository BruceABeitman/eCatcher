.class public final Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/b/d;
.implements Lcom/google/android/gms/ads/b/f;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->e()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final a(I)V
    .registers 4

    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onAdFailedToLoad with error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bl;->a(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public final b()V
    .registers 3

    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->d()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final b(I)V
    .registers 4

    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onAdFailedToLoad with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bl;->a(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public final c()V
    .registers 3

    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->b()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final d()V
    .registers 3

    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->c()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final e()V
    .registers 3

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onClick."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->a()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final f()V
    .registers 3

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->e()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final g()V
    .registers 3

    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->d()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final h()V
    .registers 3

    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->b()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public final i()V
    .registers 3

    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bl;->c()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method
