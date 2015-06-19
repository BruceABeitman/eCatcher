.class Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumDataLoader;
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
            "Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;",
            ">;"
        }
    .end annotation
.end field

.field public cachedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaItem;",
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

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
