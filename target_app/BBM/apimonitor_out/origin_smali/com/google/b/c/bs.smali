.class final Lcom/google/b/c/bs;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/b/c/bm;


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
        "Lcom/google/b/c/bm",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/b/c/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/b/c/bs;->a:Lcom/google/b/c/az;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/b/c/az;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/bs;->a:Lcom/google/b/c/az;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)Lcom/google/b/c/bm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)",
            "Lcom/google/b/c/bm",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/c/bs;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/b/c/bs;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)V

    return-object v0
.end method

.method public final b()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/c/bs;->clear()V

    return-void
.end method
