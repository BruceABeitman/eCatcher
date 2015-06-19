.class final Lcom/google/android/gms/internal/kj;
.super Lcom/google/android/gms/internal/gp;

# interfaces
.implements Lcom/google/android/gms/games/b/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final d:Lcom/google/android/gms/common/api/Status;

.field private final e:Lcom/google/android/gms/games/b/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kj;->d:Lcom/google/android/gms/common/api/Status;

    new-instance v1, Lcom/google/android/gms/games/b/d;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/b/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_15
    invoke-virtual {v1}, Lcom/google/android/gms/games/b/d;->a()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/b/d;->a(I)Lcom/google/android/gms/games/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/b/c;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/b/p;

    iput-object v0, p0, Lcom/google/android/gms/internal/kj;->e:Lcom/google/android/gms/games/b/p;
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_30

    :goto_28
    invoke-virtual {v1}, Lcom/google/android/gms/games/b/d;->b()V

    return-void

    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    iput-object v0, p0, Lcom/google/android/gms/internal/kj;->e:Lcom/google/android/gms/games/b/p;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_30

    goto :goto_28

    :catchall_30
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/b/d;->b()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->d:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/kj;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/games/b/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->e:Lcom/google/android/gms/games/b/p;

    return-object v0
.end method
