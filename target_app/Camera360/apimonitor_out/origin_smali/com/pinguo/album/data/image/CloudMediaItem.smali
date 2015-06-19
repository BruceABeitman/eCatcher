.class public abstract Lcom/pinguo/album/data/image/CloudMediaItem;
.super Lcom/pinguo/album/data/MediaItem;
.source "CloudMediaItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public avgColor:I

.field public crc32:Ljava/lang/String;

.field public date:I

.field public hasAudio:Z

.field public height:I

.field public photoId:Ljava/lang/String;

.field public photoKey:Ljava/lang/String;

.field public timestamp:D

.field public week:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/data/image/CloudMediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/image/CloudMediaItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/data/MediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    return-void
.end method


# virtual methods
.method public abstract getLocalPath()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public getUriKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/image/CloudMediaItem;->photoKey:Ljava/lang/String;

    return-object v0
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/album/data/image/CloudMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/pinguo/album/data/image/CloudMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/CloudMediaItem;->mDataVersion:J

    :cond_c
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
