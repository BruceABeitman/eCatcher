.class Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "ThumbnailDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public allSortTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;"
        }
    .end annotation
.end field

.field public cachedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public reloadCount:I

.field public reloadStart:I

.field public size:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
