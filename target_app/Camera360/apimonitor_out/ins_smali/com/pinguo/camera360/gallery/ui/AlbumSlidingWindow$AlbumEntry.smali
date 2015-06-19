.class public Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"
.field public bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field public content:Lcom/pinguo/camera360/gallery/ui/Texture;
.field private contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.field public isWaitDisplayed:Z
.field public item:Lcom/pinguo/camera360/gallery/data/MediaItem;
.field public mediaType:I
.field public path:Lcom/pinguo/camera360/gallery/data/Path;
.field public rotation:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
return-void
.end method