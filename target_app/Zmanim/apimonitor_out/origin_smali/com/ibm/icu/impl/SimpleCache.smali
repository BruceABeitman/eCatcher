.class public Lcom/ibm/icu/impl/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUCache;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x10


# instance fields
.field private cacheRef:Ljava/lang/ref/Reference;

.field private capacity:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/SimpleCache;->type:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/SimpleCache;->capacity:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/SimpleCache;->type:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/SimpleCache;->capacity:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    iput p1, p0, Lcom/ibm/icu/impl/SimpleCache;->type:I

    :cond_12
    if-lez p2, :cond_16

    iput p2, p0, Lcom/ibm/icu/impl/SimpleCache;->capacity:I

    :cond_16
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    const/4 v0, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_b
    if-nez v0, :cond_24

    new-instance v2, Ljava/util/HashMap;

    iget v3, p0, Lcom/ibm/icu/impl/SimpleCache;->capacity:I

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/ibm/icu/impl/SimpleCache;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_22
    iput-object v1, p0, Lcom/ibm/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    :cond_24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_28
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_22
.end method
