.class public Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "ThumbnailDataWindow.java"
.field public bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
.field public content:Lcom/pinguo/album/opengles/Texture;
.field private contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
.field public item:Lcom/pinguo/album/data/MediaItem;
.field public mediaType:I
.field public path:Lcom/pinguo/album/data/MediaPath;
.field public rotation:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;Lcom/pinguo/album/data/utils/BitmapLoader;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
return-void
.end method