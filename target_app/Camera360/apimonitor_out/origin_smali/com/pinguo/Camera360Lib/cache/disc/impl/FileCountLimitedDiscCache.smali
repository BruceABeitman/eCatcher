.class public Lcom/pinguo/Camera360Lib/cache/disc/impl/FileCountLimitedDiscCache;
.super Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
.source "FileCountLimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method


# virtual methods
.method protected getSize(Ljava/io/File;)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
