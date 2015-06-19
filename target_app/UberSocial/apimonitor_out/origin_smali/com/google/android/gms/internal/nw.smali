.class public final Lcom/google/android/gms/internal/nw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
    .registers 13

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;III)Lcom/google/android/gms/common/api/j;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/nw$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/nw$3;-><init>(Lcom/google/android/gms/internal/nw;III)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nw;->a(Lcom/google/android/gms/common/api/e;Ljava/util/List;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Ljava/util/List;)Lcom/google/android/gms/common/api/j;
    .registers 5

    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/nw$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/nw$1;-><init>(Lcom/google/android/gms/internal/nw;[Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public a(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nw;->a(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 7

    if-eqz p1, :cond_a

    const-string v0, "requests"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "requests"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    :goto_23
    if-ge v3, v4, :cond_32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/request/GameRequest;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_23

    :cond_32
    move-object v0, v2

    goto :goto_f
.end method

.method public a(Lcom/google/android/gms/common/api/e;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->v()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/request/d;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/request/d;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/e;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->B()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nw;->b(Lcom/google/android/gms/common/api/e;Ljava/util/List;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Ljava/util/List;)Lcom/google/android/gms/common/api/j;
    .registers 5

    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/nw$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/nw$2;-><init>(Lcom/google/android/gms/internal/nw;[Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public c(Lcom/google/android/gms/common/api/e;)I
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->C()I

    move-result v0

    return v0
.end method

.method public d(Lcom/google/android/gms/common/api/e;)I
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->D()I

    move-result v0

    return v0
.end method
