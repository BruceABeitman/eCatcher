.class public Lcom/ibm/icu/impl/locale/LocaleObjectCache;
.super Ljava/lang/Object;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/Map;

.field private _rq:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_rq:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private expungeStaleEntries()V
    .registers 4

    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_rq:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_14

    check-cast v1, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_14
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->expungeStaleEntries()V

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->expungeStaleEntries()V

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    move-object v2, v1

    :goto_16
    return-object v2

    :cond_17
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/Map;

    new-instance v3, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;

    iget-object v4, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_rq:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p1, p2, v4}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$WeakValueRef;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p2

    goto :goto_16
.end method
