.class public abstract Lcom/google/b/c/b;
.super Lcom/google/b/c/by;
.source "AbstractSequentialIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/c/by",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/b/c/by;-><init>()V

    iput-object p1, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/c/b;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_17

    iget-object v1, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/b/c/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;

    return-object v0

    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/b/c/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/b/c/b;->a:Ljava/lang/Object;

    throw v0
.end method
