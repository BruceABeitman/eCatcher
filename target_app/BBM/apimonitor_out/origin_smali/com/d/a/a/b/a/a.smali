.class public final Lcom/d/a/a/b/a/a;
.super Ljava/lang/Object;
.source "FuzzyKeyMemoryCache.java"

# interfaces
.implements Lcom/d/a/a/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/d/a/a/b/c",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/d/a/a/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/a/b/c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/d/a/a/b/c;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/b/c",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    iput-object p2, p0, Lcom/d/a/a/b/a/a;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    invoke-interface {v0, p1}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    invoke-interface {v0}, Lcom/d/a/a/b/c;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v2, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    invoke-interface {v0}, Lcom/d/a/a/b/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/d/a/a/b/a/a;->b:Ljava/util/Comparator;

    invoke-interface {v4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_e

    :goto_20
    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    invoke-interface {v1, v0}, Lcom/d/a/a/b/c;->b(Ljava/lang/Object;)V

    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2f

    iget-object v0, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    invoke-interface {v0, p1, p2}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catchall_2f
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_32
    move-object v0, v1

    goto :goto_20
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/d/a/a/b/a/a;->a:Lcom/d/a/a/b/c;

    invoke-interface {v0, p1}, Lcom/d/a/a/b/c;->b(Ljava/lang/Object;)V

    return-void
.end method
