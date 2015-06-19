.class public final Lcom/bbm/d/a/f;
.super Ljava/lang/Object;
.source "ListProtocol.java"


# instance fields
.field public final a:Lcom/bbm/f/a;

.field public final b:Lcom/bbm/d/a/c/e;

.field private final c:Lcom/bbm/d/a/a/h;

.field private final d:Lcom/bbm/d/a/b/e;

.field private final e:Lcom/bbm/d/a/h;


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/d/a/i;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iput-object p2, p0, Lcom/bbm/d/a/f;->e:Lcom/bbm/d/a/h;

    new-instance v0, Lcom/bbm/d/a/a/h;

    iget-object v1, p0, Lcom/bbm/d/a/f;->e:Lcom/bbm/d/a/h;

    invoke-direct {v0, p1, v1}, Lcom/bbm/d/a/a/h;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;)V

    iput-object v0, p0, Lcom/bbm/d/a/f;->c:Lcom/bbm/d/a/a/h;

    new-instance v0, Lcom/bbm/d/a/b/e;

    iget-object v1, p0, Lcom/bbm/d/a/f;->e:Lcom/bbm/d/a/h;

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/bbm/d/a/b/e;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/util/dc;Lcom/bbm/d/a/i;)V

    iput-object v0, p0, Lcom/bbm/d/a/f;->d:Lcom/bbm/d/a/b/e;

    new-instance v0, Lcom/bbm/d/a/c/e;

    iget-object v1, p0, Lcom/bbm/d/a/f;->e:Lcom/bbm/d/a/h;

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/bbm/d/a/c/e;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/util/dc;)V

    iput-object v0, p0, Lcom/bbm/d/a/f;->b:Lcom/bbm/d/a/c/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/a/f;->c:Lcom/bbm/d/a/a/h;

    iget-object v0, v0, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a/e;

    iget-object v1, p0, Lcom/bbm/d/a/f;->b:Lcom/bbm/d/a/c/e;

    iget-object v1, v1, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/a/c/a;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Lcom/bbm/d/a/a/e;->a(Ljava/lang/String;)Lcom/bbm/d/a/a;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    if-eqz v1, :cond_22

    invoke-virtual {v1, p2}, Lcom/bbm/d/a/c/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/a;

    move-result-object v0

    goto :goto_1a

    :cond_22
    iget-object v0, p0, Lcom/bbm/d/a/f;->d:Lcom/bbm/d/a/b/e;

    invoke-virtual {v0, p1, p3}, Lcom/bbm/d/a/b/e;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p2}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a;

    goto :goto_1a

    :cond_3f
    new-instance v0, Lcom/bbm/d/a/b/c;

    sget-object v1, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    invoke-direct {v0, v1, p3}, Lcom/bbm/d/a/b/c;-><init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;)V

    goto :goto_38
.end method

.method public final a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bbm/d/a/a/d",
            "<TT;>;)",
            "Lcom/bbm/j/w",
            "<TT;>;"
        }
    .end annotation

    iget-object v6, p0, Lcom/bbm/d/a/f;->c:Lcom/bbm/d/a/a/h;

    iget-object v0, v6, Lcom/bbm/d/a/a/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v7, Lcom/bbm/d/a/e;

    invoke-direct {v7, p1, p3}, Lcom/bbm/d/a/e;-><init>(Lcom/bbm/d/a/d;Lcom/bbm/d/a/a/d;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    iget-object v1, v7, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/w;

    :goto_1a
    if-eqz v0, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, v6, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a/e;

    if-eqz v0, :cond_31

    new-instance v1, Lcom/bbm/d/a/a/i;

    invoke-direct {v1, v6, v0, p3}, Lcom/bbm/d/a/a/i;-><init>(Lcom/bbm/d/a/a/h;Lcom/bbm/d/a/a/e;Lcom/bbm/d/a/a/d;)V

    invoke-virtual {v6, v7, v1}, Lcom/bbm/d/a/a/h;->a(Lcom/bbm/d/a/e;Lcom/bbm/j/w;)V

    move-object v0, v1

    goto :goto_1c

    :cond_31
    iget-object v0, v6, Lcom/bbm/d/a/a/h;->c:Lcom/bbm/d/a/h;

    iget-object v1, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a/h;->a(Ljava/lang/String;)Lcom/bbm/d/a/c;

    move-result-object v1

    if-nez v1, :cond_52

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to invoke requestListMatching with invalid list type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    if-nez p3, :cond_6f

    iget-boolean v0, v1, Lcom/bbm/d/a/c;->c:Z

    if-nez v0, :cond_6f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to request all elements for map-only list type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    new-instance v0, Lcom/bbm/d/a/a/e;

    iget-object v3, v6, Lcom/bbm/d/a/a/h;->d:Lcom/bbm/f/a;

    invoke-static {p3}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bbm/d/a/a/e;-><init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;Lcom/google/b/a/l;)V

    invoke-virtual {v6, v7, v0}, Lcom/bbm/d/a/a/h;->a(Lcom/bbm/d/a/e;Lcom/bbm/j/w;)V

    goto :goto_1c

    :cond_80
    move-object v0, v1

    goto :goto_1a
.end method

.method public final a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/d/a/b/a",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/a/f;->d:Lcom/bbm/d/a/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/bbm/d/a/b/e;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bbm/j/w",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/bbm/d/a/f;->c:Lcom/bbm/d/a/a/h;

    iget-object v0, v2, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a/e;

    if-nez v0, :cond_25

    iget-object v0, v2, Lcom/bbm/d/a/a/h;->c:Lcom/bbm/d/a/h;

    iget-object v3, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/d/a/h;->a(Ljava/lang/String;)Lcom/bbm/d/a/c;

    move-result-object v3

    if-nez v3, :cond_26

    const-string v0, "Returning empty list in response to request for invalid list type %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v1

    :cond_25
    :goto_25
    return-object v0

    :cond_26
    iget-boolean v0, v3, Lcom/bbm/d/a/c;->c:Z

    if-nez v0, :cond_37

    const-string v0, "Attempted to request all elements for map-only list type %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_25

    :cond_37
    new-instance v0, Lcom/bbm/d/a/a/e;

    iget-object v1, v2, Lcom/bbm/d/a/a/h;->d:Lcom/bbm/f/a;

    invoke-direct {v0, v3, p1, v1, p2}, Lcom/bbm/d/a/a/e;-><init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;)V

    iget-object v1, v2, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25
.end method
