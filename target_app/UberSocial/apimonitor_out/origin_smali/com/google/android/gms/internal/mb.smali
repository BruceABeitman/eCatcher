.class final Lcom/google/android/gms/internal/mb;
.super Lcom/google/android/gms/internal/kv;

# interfaces
.implements Lcom/google/android/gms/games/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final g:Lcom/google/android/gms/games/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/mb;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/a;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mb;->g:Lcom/google/android/gms/games/a;

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/games/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->g:Lcom/google/android/gms/games/a;

    return-object v0
.end method
