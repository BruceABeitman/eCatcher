.class public abstract Lcom/ibm/icu/util/UResourceBundle;
.super Ljava/util/ResourceBundle;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/UResourceBundle$1;,
        Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;
    }
.end annotation


# static fields
.field protected static final ALIAS:I = 0x3

.field public static final ARRAY:I = 0x8

.field public static final BINARY:I = 0x1

.field private static BUNDLE_CACHE:Lcom/ibm/icu/impl/ICUCache; = null

.field public static final INT:I = 0x7

.field public static final INT_VECTOR:I = 0xe

.field public static final NONE:I = -0x1

.field private static final RES_BOGUS:J = -0x1L

.field private static ROOT_CACHE:Ljava/lang/ref/SoftReference; = null

.field private static final ROOT_ICU:I = 0x1

.field private static final ROOT_JAVA:I = 0x2

.field private static final ROOT_MISSING:I = 0x0

.field public static final STRING:I = 0x0

.field public static final TABLE:I = 0x2

.field protected static final TABLE32:I = 0x4

.field private static final cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;


# instance fields
.field protected isTopLevel:Z

.field protected key:Ljava/lang/String;

.field private keys:Ljava/util/Vector;

.field protected resource:J

.field protected size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/ICUCache;

    new-instance v0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;-><init>(Lcom/ibm/icu/util/UResourceBundle$1;)V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/UResourceBundle;->keys:Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundle;->size:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ibm/icu/util/UResourceBundle;->resource:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/UResourceBundle;->isTopLevel:Z

    return-void
.end method

.method private static addToCache(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Lcom/ibm/icu/util/UResourceBundle;)V
    .registers 3

    sget-object v0, Lcom/ibm/icu/util/UResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0, p1}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected static addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/UResourceBundle;)V
    .registers 6

    sget-object v0, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    #calls: Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    invoke-static {v1, p0, p1, p2}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->access$000(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    sget-object v1, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-static {p0, p3}, Lcom/ibm/icu/util/UResourceBundle;->addToCache(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Lcom/ibm/icu/util/UResourceBundle;)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static getBundleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    if-nez p0, :cond_6

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    :cond_6
    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    if-nez p0, :cond_4

    const-string p0, "com/ibm/icu/impl/data/icudt42b"

    :cond_4
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    if-nez p0, :cond_4

    const-string p0, "com/ibm/icu/impl/data/icudt42b"

    :cond_4
    if-nez p1, :cond_a

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    :cond_a
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    if-nez p0, :cond_4

    const-string p0, "com/ibm/icu/impl/data/icudt42b"

    :cond_4
    if-nez p1, :cond_a

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    :cond_a
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 4

    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 6

    if-nez p0, :cond_4

    const-string p0, "com/ibm/icu/impl/data/icudt42b"

    :cond_4
    if-nez p1, :cond_17

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    move-object v0, v1

    :goto_b
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1

    :cond_17
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    move-object v0, v1

    goto :goto_b
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 6

    if-nez p0, :cond_4

    const-string p0, "com/ibm/icu/impl/data/icudt42b"

    :cond_4
    if-nez p1, :cond_15

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    move-object v0, v1

    :goto_b
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1

    :cond_15
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    move-object v0, v1

    goto :goto_b
.end method

.method private static getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .registers 9

    const/4 v1, 0x0

    sget-object v5, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    if-eqz v5, :cond_d

    sget-object v5, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :cond_d
    if-nez v1, :cond_1b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    :cond_1b
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3d

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_42

    const-string v5, "root"

    move-object v2, v5

    :goto_2f
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_31
    invoke-static {p0, v2, p1, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_34
    .catch Ljava/util/MissingResourceException; {:try_start_31 .. :try_end_34} :catch_46

    const/4 v4, 0x1

    :goto_35
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :cond_42
    const-string v5, ""

    move-object v2, v5

    goto :goto_2f

    :catch_46
    move-exception v0

    const/4 v5, 0x1

    :try_start_48
    invoke-static {p0, v2, p1, v5}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_4b
    .catch Ljava/util/MissingResourceException; {:try_start_48 .. :try_end_4b} :catch_4d

    const/4 v4, 0x2

    goto :goto_35

    :catch_4d
    move-exception v5

    goto :goto_35
.end method

.method private handleGetObjectImpl(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->resolveObject(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    :cond_10
    if-nez v0, :cond_45

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_45
    return-object v0
.end method

.method private declared-synchronized initKeysVector()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/ibm/icu/util/UResourceBundle;->keys:Ljava/util/Vector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v2, :cond_7

    :cond_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/util/UResourceBundle;->keys:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGetKeys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/util/UResourceBundle;->keys:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/ibm/icu/util/UResourceBundle;->keys:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_12

    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
    .registers 11

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lcom/ibm/icu/util/UResourceBundle;->getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v4

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    packed-switch v4, :pswitch_data_50

    :try_start_c
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/ibm/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_14} :catch_45

    :goto_14
    move-object v5, v0

    :goto_15
    return-object v5

    :pswitch_16
    if-eqz p3, :cond_3b

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    monitor-enter v5

    :try_start_1f
    sget-object v6, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    #calls: Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    invoke-static {v6, p2, v3, v1}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->access$000(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    sget-object v6, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-static {v6}, Lcom/ibm/icu/util/UResourceBundle;->loadFromCache(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_38

    if-nez v0, :cond_36

    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    sget-object v5, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-static {v5, v0}, Lcom/ibm/icu/util/UResourceBundle;->addToCache(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Lcom/ibm/icu/util/UResourceBundle;)V

    :cond_36
    :goto_36
    move-object v5, v0

    goto :goto_15

    :catchall_38
    move-exception v6

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v6

    :cond_3b
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_36

    :pswitch_40
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    goto :goto_15

    :catch_45
    move-exception v5

    move-object v2, v5

    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/ibm/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;I)V

    goto :goto_14

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_16
        :pswitch_40
    .end packed-switch
.end method

.method private static loadFromCache(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 2

    sget-object v0, Lcom/ibm/icu/util/UResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/UResourceBundle;

    return-object p0
.end method

.method protected static loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    sget-object v0, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    #calls: Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    invoke-static {v1, p0, p1, p2}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->access$000(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    sget-object v1, Lcom/ibm/icu/util/UResourceBundle;->cacheKey:Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-static {v1}, Lcom/ibm/icu/util/UResourceBundle;->loadFromCache(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static resetBundleCache()V
    .registers 1

    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/ICUCache;

    return-void
.end method

.method private resolveObject(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    return-object v2

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2e

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->handleGetStringArray()[Ljava/lang/String;
    :try_end_28
    .catch Lcom/ibm/icu/util/UResourceTypeMismatchException; {:try_start_1d .. :try_end_28} :catch_2a

    move-result-object v2

    goto :goto_a

    :catch_2a
    move-exception v2

    move-object v0, v2

    move-object v2, v1

    goto :goto_a

    :cond_2e
    move-object v2, v1

    goto :goto_a
.end method

.method private static setRootType(Ljava/lang/String;I)V
    .registers 5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v0, 0x0

    sget-object v2, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_12
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    goto :goto_12
.end method


# virtual methods
.method public get(I)Lcom/ibm/icu/util/UResourceBundle;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    if-nez v1, :cond_50

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    :cond_13
    if-nez v1, :cond_50

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_50
    move-object v0, v1

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object v2, v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v1
.end method

.method public get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    if-nez v2, :cond_4e

    move-object v3, p0

    :goto_8
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_15

    if-nez v2, :cond_15

    invoke-virtual {v3, p1, v4, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    goto :goto_8

    :cond_15
    if-nez v2, :cond_4e

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/MissingResourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find resource for bundle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_4e
    move-object v0, v2

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object v4, v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v2
.end method

.method protected abstract getBaseName()Ljava/lang/String;
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinary([B)[B
    .registers 4

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt()I
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntVector()[I
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
    .registers 2

    new-instance v0, Lcom/ibm/icu/util/UResourceBundleIterator;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/UResourceBundleIterator;-><init>(Lcom/ibm/icu/util/UResourceBundle;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundle;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;->initKeysVector()V

    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundle;->keys:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLocaleID()Ljava/lang/String;
.end method

.method protected abstract getParent()Lcom/ibm/icu/util/UResourceBundle;
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundle;->size:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    new-instance v1, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringArray()[Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .registers 4

    iget-wide v1, p0, Lcom/ibm/icu/util/UResourceBundle;->resource:J

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->RES_GET_TYPE(J)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v1, 0x2

    :goto_a
    return v1

    :cond_b
    move v1, v0

    goto :goto_a
.end method

.method public getUInt()I
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getULocale()Lcom/ibm/icu/util/ULocale;
.end method

.method public getVersion()Lcom/ibm/icu/util/VersionInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .registers 5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_7
    iget v3, p0, Lcom/ibm/icu/util/UResourceBundle;->size:I

    if-ge v0, v3, :cond_19

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract setLoadingStatus(I)V
.end method
