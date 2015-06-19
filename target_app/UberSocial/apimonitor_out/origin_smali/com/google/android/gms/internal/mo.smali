.class final Lcom/google/android/gms/internal/mo;
.super Lcom/google/android/gms/internal/jx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final b:Lcom/google/android/gms/games/multiplayer/turnbased/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/turnbased/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mo;->b:Lcom/google/android/gms/games/multiplayer/turnbased/c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jy;

    new-instance v1, Lcom/google/android/gms/internal/mn;

    iget-object v2, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jy;

    iget-object v3, p0, Lcom/google/android/gms/internal/mo;->b:Lcom/google/android/gms/games/multiplayer/turnbased/c;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/mn;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/turnbased/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method

.method public q(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->a()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2d

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b()V

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jy;

    new-instance v2, Lcom/google/android/gms/internal/mp;

    iget-object v3, p0, Lcom/google/android/gms/internal/mo;->a:Lcom/google/android/gms/internal/jy;

    iget-object v4, p0, Lcom/google/android/gms/internal/mo;->b:Lcom/google/android/gms/games/multiplayer/turnbased/c;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/mp;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/turnbased/c;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b()V

    throw v0
.end method
