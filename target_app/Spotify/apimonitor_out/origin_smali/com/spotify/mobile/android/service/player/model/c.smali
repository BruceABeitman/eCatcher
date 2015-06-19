.class public final Lcom/spotify/mobile/android/service/player/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

.field private final c:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->b:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    invoke-static {p3}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/model/c;->g()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    const-string v5, "getPositions()"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, " -- Checking %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, " -- Versus %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Z

    move-result v0

    const-string v5, " -- Equals: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_4f
    return-object v3
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    return-object v0
.end method

.method public final d()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->b:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    return-object v0
.end method

.method public final e()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    return-object v0
.end method

.method public final f()I
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_b
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->a()Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    move v0, v2

    goto :goto_b

    :cond_19
    move v1, v2

    goto :goto_15
.end method

.method public final g()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/model/c;->b:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-object v0
.end method

.method public final h()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/e;->a(Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "Previous item"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/c;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "Current item"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/c;->b:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    const-string v1, "Next item"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/c;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
