.class Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/album/AlbumThreadPool$Job",
        "<",
        "Lcom/pinguo/album/opengles/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/pinguo/album/data/MediaItem;

.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Lcom/pinguo/album/opengles/ScreenNail;
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    invoke-virtual {v3}, Lcom/pinguo/album/data/MediaItem;->getScreenNail()Lcom/pinguo/album/opengles/ScreenNail;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v2, v1

    :cond_b
    :goto_b
    return-object v2

    :cond_c
    iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->isTemporaryItem(Lcom/pinguo/album/data/MediaItem;)Z
    invoke-static {v3, v4}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$0(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pinguo/album/data/MediaItem;)Lcom/pinguo/album/opengles/ScreenNail;
    invoke-static {v2, v3}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$1(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)Lcom/pinguo/album/opengles/ScreenNail;

    move-result-object v2

    goto :goto_b

    :cond_1f
    iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/pinguo/album/data/MediaItem;->requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pinguo/album/AlbumThreadPool$Job;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v0, :cond_45

    iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    invoke-virtual {v3}, Lcom/pinguo/album/data/MediaItem;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    invoke-virtual {v4}, Lcom/pinguo/album/data/MediaItem;->getFullImageRotation()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v5}, Lcom/pinguo/album/data/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_45
    if-eqz v0, :cond_b

    new-instance v2, Lcom/pinguo/album/opengles/TiledScreenNail;

    invoke-direct {v2, v0}, Lcom/pinguo/album/opengles/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_b
.end method

.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Lcom/pinguo/album/opengles/ScreenNail;

    move-result-object v0

    return-object v0
.end method
