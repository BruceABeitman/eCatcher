.class final Lcom/spotify/mobile/android/service/player/PlayerStateService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/player/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/player/PlayerStateService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/player/PlayerStateService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/player/PlayerStateService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Lcom/spotify/mobile/android/service/player/b;

    move-result-object v0

    iput p1, v0, Lcom/spotify/mobile/android/service/player/b;->a:I

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/a/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(I)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_29

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    return-void
.end method

.method public final a(Lcom/google/common/base/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Lcom/spotify/mobile/android/service/player/b;

    move-result-object v0

    iput-object p1, v0, Lcom/spotify/mobile/android/service/player/b;->d:Lcom/google/common/base/Optional;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/a/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/google/common/base/Optional;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_29

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Lcom/spotify/mobile/android/service/player/b;

    move-result-object v0

    iput-object p1, v0, Lcom/spotify/mobile/android/service/player/b;->c:Lcom/spotify/mobile/android/service/player/model/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/a/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/spotify/mobile/android/service/player/model/b;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_29

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/d;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Lcom/spotify/mobile/android/service/player/b;

    move-result-object v0

    iput-object p1, v0, Lcom/spotify/mobile/android/service/player/b;->b:Lcom/spotify/mobile/android/service/player/model/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/PlayerStateService$1;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/PlayerStateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/a/g;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/spotify/mobile/android/service/player/model/d;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_29

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    return-void
.end method
