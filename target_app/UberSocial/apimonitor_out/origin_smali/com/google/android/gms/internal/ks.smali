.class final Lcom/google/android/gms/internal/ks;
.super Lcom/google/android/gms/internal/gn;

# interfaces
.implements Lcom/google/android/gms/games/request/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/ks;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/games/request/b;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/oi;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ks;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ks;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    new-instance v1, Lcom/google/android/gms/games/request/b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/request/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    move-object v0, v1

    goto :goto_d
.end method

.method protected a(Lcom/google/android/gms/common/api/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method protected c()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->d()V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ks;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->i()V

    goto :goto_a

    :cond_24
    return-void
.end method
