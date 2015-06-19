.class final Lcom/google/b/b/bf;
.super Ljava/lang/ref/WeakReference;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/b/b/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Lcom/google/b/b/ba",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/b/b/bf;->a:Lcom/google/b/b/am;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)Lcom/google/b/b/ba;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/b/bf;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/b/b/bf;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()Lcom/google/b/b/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/bf;->a:Lcom/google/b/b/am;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
