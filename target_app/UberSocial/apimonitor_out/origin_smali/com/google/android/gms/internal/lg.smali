.class abstract Lcom/google/android/gms/internal/lg;
.super Lcom/google/android/gms/internal/kv;


# instance fields
.field final a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field final synthetic g:Lcom/google/android/gms/internal/jy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/lg;->g:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/d;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/multiplayer/turnbased/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_a
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->a()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v0, p0, Lcom/google/android/gms/internal/lg;->a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_27

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b()V

    return-void

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iput-object v0, p0, Lcom/google/android/gms/internal/lg;->a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_27

    goto :goto_1f

    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b()V

    throw v0
.end method


# virtual methods
.method abstract a(Lcom/google/android/gms/common/api/t;)V
.end method

.method protected a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lg;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/lg;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lg;->a:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method
