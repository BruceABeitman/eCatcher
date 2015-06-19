.class Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/cosmos/router/Request;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->b(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;)I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->destroy()V

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->b(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;)I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;->destroy()V

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
