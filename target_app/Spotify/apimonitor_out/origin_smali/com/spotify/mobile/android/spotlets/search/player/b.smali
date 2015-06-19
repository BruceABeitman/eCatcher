.class final Lcom/spotify/mobile/android/spotlets/search/player/b;
.super Landroid/database/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/player/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)V
    .registers 6

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/player/b;->mObservers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/player/d;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/player/d;->a(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method
