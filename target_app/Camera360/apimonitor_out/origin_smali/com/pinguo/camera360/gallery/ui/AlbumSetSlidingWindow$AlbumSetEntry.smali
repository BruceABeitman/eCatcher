.class public Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcom/pinguo/camera360/gallery/data/MediaSet;

.field public bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

.field public content:Lcom/pinguo/camera360/gallery/ui/Texture;

.field public coverDataVersion:J

.field private coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

.field public isWaitLoadingDisplayed:Z

.field private labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

.field public labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

.field public rotation:I

.field public setPath:Lcom/pinguo/camera360/gallery/data/Path;

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    return-void
.end method
