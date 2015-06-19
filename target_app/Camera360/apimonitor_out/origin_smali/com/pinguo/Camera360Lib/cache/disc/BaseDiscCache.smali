.class public abstract Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;
.super Ljava/lang/Object;
.source "BaseDiscCache.java"

# interfaces
.implements Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;


# static fields
.field private static final ERROR_ARG_NULL:Ljava/lang/String; = "\"%s\" argument must be not null"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected cacheDir:Ljava/io/File;

.field private fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\"%s\" argument must be not null"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "cacheDir"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-nez p2, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\"%s\" argument must be not null"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "fileNameGenerator"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iput-object p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    iput-object p2, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;

    return-void
.end method

.method private clearCacheDir(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v3, v1

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v3, :cond_b

    :cond_a
    return-void

    :cond_b
    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->clearCacheDir(Ljava/io/File;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1b
.end method
