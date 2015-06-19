.class public Lcom/lenovo/anyshare/sdk/internal/bh;
.super Ljava/lang/Object;
.source "WeakReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/bh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/lenovo/anyshare/sdk/internal/bh$a",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bh$a;

    :goto_8
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->a:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/bh$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bh$a;

    goto :goto_8

    :cond_1a
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bh;->a()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bh$a;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    if-nez v0, :cond_11

    const/4 v1, 0x0

    :goto_f
    monitor-exit p0

    return-object v1

    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/bh$a;->get()Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    move-result-object v1

    goto :goto_f

    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bh;->a()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bh$a;

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/bh;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lcom/lenovo/anyshare/sdk/internal/bh$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bh$a;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1d

    if-nez v0, :cond_18

    const/4 v1, 0x0

    :goto_16
    monitor-exit p0

    return-object v1

    :cond_18
    :try_start_18
    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/bh$a;->get()Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    move-result-object v1

    goto :goto_16

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
