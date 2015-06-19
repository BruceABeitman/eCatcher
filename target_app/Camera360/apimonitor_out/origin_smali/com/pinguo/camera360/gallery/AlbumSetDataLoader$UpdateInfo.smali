.class Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public bucketId:I

.field public cover:Lcom/pinguo/camera360/gallery/data/MediaItem;

.field public index:I

.field public item:Lcom/pinguo/camera360/gallery/data/MediaSet;

.field public size:I

.field public totalCount:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
