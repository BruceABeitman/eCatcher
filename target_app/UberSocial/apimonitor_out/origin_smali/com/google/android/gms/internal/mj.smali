.class final Lcom/google/android/gms/internal/mj;
.super Lcom/google/android/gms/internal/kv;

# interfaces
.implements Lcom/google/android/gms/games/b/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final g:Lcom/google/android/gms/games/b/m;

.field private final h:Lcom/google/android/gms/games/b/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/mj;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/b/b;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/b/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_a
    invoke-virtual {v1}, Lcom/google/android/gms/games/b/b;->a()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/b/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/games/b/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/b/m;

    iput-object v0, p0, Lcom/google/android/gms/internal/mj;->g:Lcom/google/android/gms/games/b/m;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_2e

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/games/b/b;->b()V

    new-instance v0, Lcom/google/android/gms/games/b/d;

    invoke-direct {v0, p4}, Lcom/google/android/gms/games/b/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mj;->h:Lcom/google/android/gms/games/b/d;

    return-void

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/mj;->g:Lcom/google/android/gms/games/b/m;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_1f

    :catchall_2e
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/b/b;->b()V

    throw v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mj;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/games/b/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mj;->g:Lcom/google/android/gms/games/b/m;

    return-object v0
.end method

.method public h_()Lcom/google/android/gms/games/b/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mj;->h:Lcom/google/android/gms/games/b/d;

    return-object v0
.end method
