.class Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;
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
    name = "FullImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/album/AlbumThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/pinguo/album/data/MediaItem;

.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;

    iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    #calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->isTemporaryItem(Lcom/pinguo/album/data/MediaItem;)Z
    invoke-static {v0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$0(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/album/data/MediaItem;

    invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->requestLargeImage()Lcom/pinguo/album/AlbumThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pinguo/album/AlbumThreadPool$Job;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_b
.end method

.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
