.class public Lcom/ibm/icu/impl/ICUService;
.super Lcom/ibm/icu/impl/ICUNotifier;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUService$ServiceListener;,
        Lcom/ibm/icu/impl/ICUService$LocaleRef;,
        Lcom/ibm/icu/impl/ICUService$CacheEntry;,
        Lcom/ibm/icu/impl/ICUService$SimpleFactory;,
        Lcom/ibm/icu/impl/ICUService$Factory;,
        Lcom/ibm/icu/impl/ICUService$Key;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cacheref:Ljava/lang/ref/SoftReference;

.field private defaultSize:I

.field private dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

.field private final factories:Ljava/util/List;

.field private final factoryLock:Lcom/ibm/icu/impl/ICURWLock;

.field private idref:Ljava/lang/ref/SoftReference;

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "service"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUNotifier;-><init>()V

    new-instance v0, Lcom/ibm/icu/impl/ICURWLock;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUNotifier;-><init>()V

    new-instance v0, Lcom/ibm/icu/impl/ICURWLock;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method private getVisibleIDMap()Ljava/util/Map;
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_6a

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v2, v1

    :goto_c
    if-nez v2, :cond_63

    monitor-enter p0

    :try_start_f
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    if-eq v4, v5, :cond_17

    iget-object v5, p0, Lcom/ibm/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_64

    if-nez v5, :cond_5a

    :cond_17
    :try_start_17
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/ICURWLock;->acquireRead()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_67

    :try_start_21
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    iget-object v6, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/ICUService$Factory;->updateVisibleIDs(Ljava/util/Map;)V
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_3d

    goto :goto_2d

    :catchall_3d
    move-exception v5

    :goto_3e
    :try_start_3e
    iget-object v6, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v6}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    throw v5

    :catchall_44
    move-exception v5

    :goto_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw v5

    :cond_47
    :try_start_47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/ibm/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_3d

    :try_start_52
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_44

    move-object v2, v1

    goto :goto_c

    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/ibm/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_64

    goto :goto_57

    :cond_63
    return-object v2

    :catchall_64
    move-exception v5

    move-object v1, v2

    goto :goto_45

    :catchall_67
    move-exception v5

    move-object v1, v2

    goto :goto_3e

    :cond_6a
    move-object v2, v1

    goto :goto_c
.end method


# virtual methods
.method protected acceptsListener(Ljava/util/EventListener;)Z
    .registers 3

    instance-of v0, p1, Lcom/ibm/icu/impl/ICUService$ServiceListener;

    return v0
.end method

.method protected clearCaches()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    return-void
.end method

.method protected clearServiceCache()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/ICUService$Key;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final factories()Ljava/util/List;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->acquireRead()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_12

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    return-object v0

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUService;->createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUService;->createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICUService;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUService$Factory;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    :goto_10
    return-object v3

    :cond_11
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUService;->createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object v1

    :cond_15
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUService$Key;->fallback()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUService$Factory;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_2c
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public getDisplayNames()Ljava/util/SortedMap;
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/ibm/icu/impl/ICUService;->getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayNames(Lcom/ibm/icu/util/ULocale;)Ljava/util/SortedMap;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/ibm/icu/impl/ICUService;->getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/util/SortedMap;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ICUService;->getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUService;->getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNames(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;
    .registers 16

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    if-eqz v9, :cond_94

    invoke-virtual {v9, p1, p2}, Lcom/ibm/icu/impl/ICUService$LocaleRef;->get(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v0

    move-object v1, v0

    :goto_a
    if-nez v1, :cond_5e

    monitor-enter p0

    :try_start_d
    iget-object v11, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    if-eq v9, v11, :cond_15

    iget-object v11, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    if-nez v11, :cond_57

    :cond_15
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_91

    :try_start_1a
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-interface {v4, v5, p1}, Lcom/ibm/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :catchall_46
    move-exception v11

    :goto_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_46

    throw v11

    :cond_49
    :try_start_49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v11, Lcom/ibm/icu/impl/ICUService$LocaleRef;

    invoke-direct {v11, v0, p1, p2}, Lcom/ibm/icu/impl/ICUService$LocaleRef;-><init>(Ljava/util/Map;Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)V

    iput-object v11, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_46

    move-object v1, v0

    goto :goto_a

    :cond_57
    :try_start_57
    iget-object v9, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    invoke-virtual {v9, p1, p2}, Lcom/ibm/icu/impl/ICUService$LocaleRef;->get(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_91

    move-result-object v0

    goto :goto_54

    :cond_5e
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/ICUService;->createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object v8

    if-nez v8, :cond_66

    move-object v11, v1

    :goto_65
    return-object v11

    :cond_66
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-interface {v10}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_73
    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/ibm/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_73

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_73

    :cond_8f
    move-object v11, v10

    goto :goto_65

    :catchall_91
    move-exception v11

    move-object v0, v1

    goto :goto_47

    :cond_94
    move-object v1, v0

    goto/16 :goto_a
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_11

    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/ICUService;->handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    :goto_10
    return-object v22

    :cond_11
    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_41

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Service: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " key: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_41
    const/16 v18, 0x0

    if-eqz p1, :cond_388

    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/ibm/icu/impl/ICURWLock;->acquireRead()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    move-object v8, v0

    if-eqz v8, :cond_84

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_7e

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Service "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ref exists"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7e
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    :cond_84
    if-nez v5, :cond_bc

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_ae

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Service "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " cache was empty"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ae
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_bc
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v16

    const/4 v7, 0x1

    if-eqz p3, :cond_319

    const/4 v12, 0x0

    :goto_d1
    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_123

    add-int/lit8 v21, v12, 0x1

    :cond_eb
    if-nez v21, :cond_126

    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Factory "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "not registered with service: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_118
    .catchall {:try_start_45 .. :try_end_118} :catchall_118

    :catchall_118
    move-exception v22

    :goto_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    throw v22

    :cond_123
    add-int/lit8 v12, v12, 0x1

    goto :goto_d1

    :cond_126
    const/4 v7, 0x0

    move v4, v3

    :goto_128
    :try_start_128
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    move-result-object v9

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_3b9

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] looking for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_164
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22c

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_199

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " found with descriptor: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_199
    :goto_199
    if-eqz v18, :cond_37f

    if-eqz v17, :cond_321

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_1c5

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "caching \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object v0, v5

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_31c

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1d9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_31c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_224

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " adding descriptor: \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' for actual: \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_224
    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d9

    :cond_22c
    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_251

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "did not find: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in cache"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_251
    move/from16 v17, v7

    move/from16 v13, v21

    move v14, v13

    :goto_256
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_304

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    move-object/from16 v0, v22

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ibm/icu/impl/ICUService$Factory;

    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_29a

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "trying factory["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    sub-int v24, v13, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29a
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/ICUService$Factory;->create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_2e2

    new-instance v19, Lcom/ibm/icu/impl/ICUService$CacheEntry;

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2af
    .catchall {:try_start_128 .. :try_end_2af} :catchall_118

    :try_start_2af
    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_3b5

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " factory supported: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", caching"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2de
    .catchall {:try_start_2af .. :try_end_2de} :catchall_3b0

    move-object/from16 v18, v19

    goto/16 :goto_199

    :cond_2e2
    :try_start_2e2
    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_301

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "factory did not support: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_301
    move v14, v13

    goto/16 :goto_256

    :cond_304
    if-nez v6, :cond_310

    new-instance v6, Ljava/util/ArrayList;

    const/16 v22, 0x5

    move-object v0, v6

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_310
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->fallback()Z

    move-result v22

    if-eqz v22, :cond_199

    :cond_319
    move v4, v3

    goto/16 :goto_128

    :cond_31c
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    :cond_321
    if-eqz p2, :cond_341

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_374

    const/16 v22, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, p2, v22

    :cond_341
    :goto_341
    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_363

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "found in service: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_363
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    move-object/from16 v22, v0
    :try_end_369
    .catchall {:try_start_2e2 .. :try_end_369} :catchall_118

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    goto/16 :goto_10

    :cond_374
    const/16 v22, 0x0

    :try_start_376
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, p2, v22
    :try_end_37e
    .catchall {:try_start_376 .. :try_end_37e} :catchall_118

    goto :goto_341

    :cond_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    :cond_388
    sget-boolean v22, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v22, :cond_3aa

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "not found in service: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3aa
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/ICUService;->handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_10

    :catchall_3b0
    move-exception v22

    move-object/from16 v18, v19

    goto/16 :goto_119

    :cond_3b5
    move-object/from16 v18, v19

    goto/16 :goto_199

    :cond_3b9
    move v3, v4

    goto/16 :goto_164
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUService;->getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;
    .registers 8

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUService;->createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_31
    move-object v3, v4

    :cond_32
    return-object v3
.end method

.method protected handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefault()Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected markDefault()V
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    return-void
.end method

.method protected notifyListener(Ljava/util/EventListener;)V
    .registers 2

    check-cast p1, Lcom/ibm/icu/impl/ICUService$ServiceListener;

    invoke-interface {p1, p0}, Lcom/ibm/icu/impl/ICUService$ServiceListener;->serviceChanged(Lcom/ibm/icu/impl/ICUService;)V

    return-void
.end method

.method protected reInitializeFactories()V
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->acquireWrite()V

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->clearCaches()V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1f

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->notifyChanged()V

    return-object p1

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    throw v0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Factory;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUService;->registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Lcom/ibm/icu/impl/ICUService$Factory;
    .registers 6

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/ICUService;->createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/impl/ICUService$SimpleFactory;

    invoke-direct {v1, p1, v0, p3}, Lcom/ibm/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object v1

    return-object v1
.end method

.method public final reset()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->acquireWrite()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->reInitializeFactories()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->clearCaches()V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_14

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->notifyChanged()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    throw v0
.end method

.method public stats()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->resetStats()Lcom/ibm/icu/impl/ICURWLock$Stats;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock$Stats;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const-string v1, "no stats"

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z
    .registers 5

    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->acquireWrite()V

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->clearCaches()V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_25

    :cond_1a
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->notifyChanged()V

    :cond_24
    return v0

    :catchall_25
    move-exception v1

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    throw v1
.end method
