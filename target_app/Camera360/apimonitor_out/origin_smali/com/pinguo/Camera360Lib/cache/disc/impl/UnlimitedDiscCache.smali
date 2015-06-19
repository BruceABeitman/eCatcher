.class public Lcom/pinguo/Camera360Lib/cache/disc/impl/UnlimitedDiscCache;
.super Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;
.source "UnlimitedDiscCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/cache/disc/impl/UnlimitedDiscCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/impl/UnlimitedDiscCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/Camera360Lib/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 4

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method
