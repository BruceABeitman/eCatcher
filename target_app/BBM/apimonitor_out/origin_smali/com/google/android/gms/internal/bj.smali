.class public final Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;


# instance fields
.field private final mT:Lcom/google/android/gms/internal/bh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/bh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    return-object v0
.end method


# virtual methods
.method public final onClick(Lcom/google/a/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onClick."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$1;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->O()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onDismissScreen(Lcom/google/a/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$4;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdClosed()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onDismissScreen(Lcom/google/a/a/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/d",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$9;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdClosed()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onFailedToReceiveAd(Lcom/google/a/a/c;Lcom/google/a/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;",
            "Lcom/google/a/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onFailedToReceiveAd with error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/bj$5;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_27
    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-static {p2}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/a/b;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->onAdFailedToLoad(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_27

    :catch_32
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public final onFailedToReceiveAd(Lcom/google/a/a/d;Lcom/google/a/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/d",
            "<**>;",
            "Lcom/google/a/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onFailedToReceiveAd with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$10;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/bj$10;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2d
    return-void

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-static {p2}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/a/b;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->onAdFailedToLoad(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_2d

    :catch_38
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public final onLeaveApplication(Lcom/google/a/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$6;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdLeftApplication()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onLeaveApplication(Lcom/google/a/a/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/d",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$11;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdLeftApplication()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onPresentScreen(Lcom/google/a/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$7;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdOpened()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onPresentScreen(Lcom/google/a/a/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/d",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$2;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdOpened()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onReceivedAd(Lcom/google/a/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$8;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdLoaded()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public final onReceivedAd(Lcom/google/a/a/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/d",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/cz;->aX()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj$3;-><init>(Lcom/google/android/gms/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->mT:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdLoaded()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
