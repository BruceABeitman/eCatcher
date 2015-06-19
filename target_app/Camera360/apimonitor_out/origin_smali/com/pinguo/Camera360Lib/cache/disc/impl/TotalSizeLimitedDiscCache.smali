.class public Lcom/pinguo/Camera360Lib/cache/disc/impl/TotalSizeLimitedDiscCache;
.super Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
.source "TotalSizeLimitedDiscCache.java"


# static fields
.field private static final MIN_NORMAL_CACHE_SIZE:I = 0x200000

.field private static final MIN_NORMAL_CACHE_SIZE_IN_MB:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/cache/disc/impl/TotalSizeLimitedDiscCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/impl/TotalSizeLimitedDiscCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V

    const/high16 v0, 0x20

    if-ge p3, v0, :cond_f

    sget-object v0, Lcom/pinguo/Camera360Lib/cache/disc/impl/TotalSizeLimitedDiscCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "You set too small disc cache size (less than 2 Mb)"

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected getSize(Ljava/io/File;)I
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
