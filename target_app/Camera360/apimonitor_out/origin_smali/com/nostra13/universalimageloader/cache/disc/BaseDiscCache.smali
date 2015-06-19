.class public abstract Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.super Ljava/lang/Object;
.source "BaseDiscCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;


# static fields
.field private static final ERROR_ARG_NULL:Ljava/lang/String; = "\"%s\" argument must be not null"


# instance fields
.field protected cacheDir:Ljava/io/File;

.field private fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
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
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v4, :cond_15

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
