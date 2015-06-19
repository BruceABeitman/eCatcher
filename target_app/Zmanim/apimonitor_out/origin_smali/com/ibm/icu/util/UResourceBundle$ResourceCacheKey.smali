.class final Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;
.super Ljava/lang/Object;
.source "UResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCacheKey"
.end annotation


# instance fields
.field private defaultLocale:Lcom/ibm/icu/util/ULocale;

.field private hashCodeCache:I

.field private loaderRef:Ljava/lang/ref/SoftReference;

.field private searchName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/UResourceBundle$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private declared-synchronized setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    iput-object p3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    if-eqz p3, :cond_16

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    invoke-virtual {p3}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    :cond_16
    if-nez p1, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2e

    :goto_1b
    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    goto :goto_1b

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_6

    move v3, v6

    :goto_5
    return v3

    :cond_6
    :try_start_6
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;

    move-object v2, v0

    iget v3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    iget v4, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    if-eq v3, v4, :cond_12

    move v3, v5

    goto :goto_5

    :cond_12
    iget-object v3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    move v3, v5

    goto :goto_5

    :cond_1e
    iget-object v3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    if-nez v3, :cond_28

    iget-object v3, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    if-eqz v3, :cond_34

    move v3, v5

    goto :goto_5

    :cond_28
    iget-object v3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v4, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    move v3, v5

    goto :goto_5

    :cond_34
    iget-object v3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_40

    iget-object v3, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_3e

    move v3, v6

    goto :goto_5

    :cond_3e
    move v3, v5

    goto :goto_5

    :cond_40
    iget-object v3, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_4f} :catch_56
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_4f} :catch_5a

    move-result-object v4

    if-ne v3, v4, :cond_54

    move v3, v6

    goto :goto_5

    :cond_54
    move v3, v5

    goto :goto_5

    :catch_56
    move-exception v3

    move-object v1, v3

    move v3, v5

    goto :goto_5

    :catch_5a
    move-exception v3

    move-object v1, v3

    move v3, v5

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    return v0
.end method
