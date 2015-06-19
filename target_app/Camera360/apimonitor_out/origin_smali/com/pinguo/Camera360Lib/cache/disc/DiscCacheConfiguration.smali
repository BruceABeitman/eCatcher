.class public Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
.super Ljava/lang/Object;
.source "DiscCacheConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final discCacheFileCount:I

.field private final discCacheSize:I

.field private final fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->cacheDir:Ljava/io/File;
    invoke-static {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->access$0(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->cacheDir:Ljava/io/File;

    #getter for: Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheSize:I
    invoke-static {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->access$1(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->discCacheSize:I

    #getter for: Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->discCacheFileCount:I
    invoke-static {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->access$2(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->discCacheFileCount:I

    #getter for: Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
    invoke-static {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;->access$3(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;-><init>(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getDiscCacheFileCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->discCacheFileCount:I

    return v0
.end method

.method public getDiscCacheSize()I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->discCacheSize:I

    return v0
.end method

.method public getFileNameGenerator()Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->fileNameGenerator:Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;

    return-object v0
.end method
