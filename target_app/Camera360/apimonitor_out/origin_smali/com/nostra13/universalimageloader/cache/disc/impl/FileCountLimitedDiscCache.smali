.class public Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
.source "FileCountLimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method


# virtual methods
.method protected getSize(Ljava/io/File;)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
