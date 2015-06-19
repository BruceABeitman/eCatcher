.class public Lco/vine/android/util/InstanceCounter;
.super Ljava/lang/Object;
.source "InstanceCounter.java"


# instance fields
.field private final mLimit:I

.field private final sInstanceCounter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    iput p1, p0, Lco/vine/android/util/InstanceCounter;->mLimit:I

    return-void
.end method

.method public static get(I)Lco/vine/android/util/InstanceCounter;
    .registers 2

    new-instance v0, Lco/vine/android/util/InstanceCounter;

    invoke-direct {v0, p0}, Lco/vine/android/util/InstanceCounter;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Ljava/lang/Object;)I
    .registers 7

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, p0, Lco/vine/android/util/InstanceCounter;->mLimit:I

    add-int/lit8 v4, v4, 0x64

    if-le v3, v4, :cond_14

    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    :cond_14
    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_29

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3f
    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, p0, Lco/vine/android/util/InstanceCounter;->mLimit:I

    if-lt v3, v4, :cond_5a

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Limit has reached for this object type."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5a
    iget-object v3, p0, Lco/vine/android/util/InstanceCounter;->sInstanceCounter:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    return v3
.end method
